require_relative 'skeleton/lib/00_tree_node.rb'
require 'byebug'

class KnightPathFinder

  def initialize(init_pos)
    @positon = init_pos
    @move_tree = build_move_tree
    @board = Array.new(8) { Array.new(8) }
  end

  def build_move_tree
  end

  def find_path
  end

  def valid_moves(pos)
    debugger
    x, y = pos
    all_possible = [[x - 2, y - 1], [x - 1, y - 2],
                    [x - 2, y + 1], [x + 1, y - 2],
                    [x + 2, y - 1], [x - 1, y + 2],
                    [x + 2, y + 1], [x + 1, y + 2]]
    all_possible.select { |p_pos| p_pos.each { |el| (0..7).cover?(el) } }
  end


end
