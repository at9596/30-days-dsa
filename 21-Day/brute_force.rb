class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def invert_tree(root)
  return nil if root.nil?

  queue = [root]

  while !queue.empty?
    node = queue.shift

    node.left, node.right = node.right, node.left

    queue << node.left if node.left
    queue << node.right if node.right
  end

  root
end

def print_tree(root)
  return if root.nil?

  queue = [root]
  result = []

  while !queue.empty?
    node = queue.shift
    result << node.val

    queue << node.left if node.left
    queue << node.right if node.right
  end

  p result
end

root = TreeNode.new(4)
root.left = TreeNode.new(2)
root.right = TreeNode.new(7)
root.left.left = TreeNode.new(1)
root.left.right = TreeNode.new(3)
root.right.left = TreeNode.new(6)
root.right.right = TreeNode.new(9)

inverted = invert_tree(root)

print_tree(inverted)