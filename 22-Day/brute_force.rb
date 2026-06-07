class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_same_tree(p, q)
  queue = [[p, q]]

  while !queue.empty?
    n1, n2 = queue.shift

    next if n1.nil? && n2.nil?

    return false if n1.nil? || n2.nil?

    return false if n1.val != n2.val

    queue << [n1.left, n2.left]
    queue << [n1.right, n2.right]
  end

  true
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