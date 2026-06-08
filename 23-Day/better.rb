class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def level_order(root)
  result = []
  dfs(root, 0, result)
  result
end

def dfs(node, level, result)
  return if node.nil?

  result << [] if result.length == level

  result[level] << node.val

  dfs(node.left, level + 1, result)
  dfs(node.right, level + 1, result)
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

p level_order(root)