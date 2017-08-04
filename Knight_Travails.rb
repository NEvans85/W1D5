require_relative 'skeleton/lib/00_tree_node.rb'
require 'byebug'

class KnightPathFinder

  attr_reader :position, :move_tree, :board, :visited_positions

  def initialize(init_pos)
    @position = init_pos
    @move_tree = build_move_tree
    @board = Array.new(8) { Array.new(8) }
    @visited_positions = []
  end

  def build_move_tree
    queue = [@position]
    until queue.empty?
  end

  def find_path
  end

  def new_move_positions(pos)
    unvisited_positions = valid_moves(pos).reject do |valid_pos|
      @visited_positions.include?(valid_pos)
    end
    @visited_positions += unvisited_positions
    unvisited_positions
  end

  def valid_moves(pos)
    x, y = pos
    all_possible = [[x - 2, y - 1], [x - 1, y - 2],
                    [x - 2, y + 1], [x + 1, y - 2],
                    [x + 2, y - 1], [x - 1, y + 2],
                    [x + 2, y + 1], [x + 1, y + 2]]
    all_possible.select { |p_pos| p_pos.all? { |el| (0..7).cover?(el) } }
  end


end
