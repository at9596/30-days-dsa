class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def level_order(root)
  return [] if root.nil?

  result = []
  queue = [root]

  while !queue.empty?
    level_size = queue.length
    current_level = []

    while level_size > 0
      node = queue.shift

      current_level << node.val

      queue << node.left if node.left
      queue << node.right if node.right

      level_size -= 1
    end

    result << current_level
  end

  result
end

root = TreeNode.new(3)
root.left = TreeNode.new(9)
root.right = TreeNode.new(20)
root.right.left = TreeNode.new(15)
root.right.right = TreeNode.new(7)

p level_order(root)