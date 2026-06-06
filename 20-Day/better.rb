class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end

  def max_depth(node)
    return 0 if node.nil?

    left_depth = max_depth(node.left)
    right_depth = max_depth(node.right)

    1 + [left_depth, right_depth].max
  end
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

puts root.max_depth(root)