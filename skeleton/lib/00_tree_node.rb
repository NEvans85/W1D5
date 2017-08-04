require 'byebug'


class PolyTreeNode
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  def parent=(node)
   # TODO: refactor conditional
    if @parent != node
      @parent.children.delete(self) unless @parent.nil?
    end
    @parent = node
    @parent.children << self unless @parent.nil? || @parent.children.include?(self)
  end

  def children
    @children
  end

  def value
    @value
  end

  def add_child(child_node)
    child_node.parent=(self)
  end

  def remove_child(child_node)
    unless @children.include?(child_node)
      raise 'Not one of mine!'
    end
    child_node.parent=(nil)
  end

  def dfs(target_value)
    return self if @value == target_value
    @children.each do |child|
      puts child.dfs(target_value)
    end
    nil
  end

end
