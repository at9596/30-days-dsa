class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  return false if p.nil? || q.nil?
  return false if p.val != q.val

  is_same_tree(p.left, q.left) &&
    is_same_tree(p.right, q.right)
end

p = TreeNode.new(1)
p.left = TreeNode.new(2)
p.right = TreeNode.new(3)

q = TreeNode.new(1)
q.left = TreeNode.new(2)
q.right = TreeNode.new(3)

puts is_same_tree(p, q)

q2 = TreeNode.new(1)
q2.left = TreeNode.new(2)

puts is_same_tree(p, q2)