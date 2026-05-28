class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

class LL
  attr_accessor :node
  def initialize(data)
    @node = Node.new(data)
  end
end

head  = Node.new(1)
head.next = Node.new(2)
head.next.next  = Node.new(3)

nodes = []

while head
  nodes << head.data
  head = head.next
end
print nodes.reverse
