class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

head = Node.new(1)
head.next = Node.new(2)
head.next.next = Node.new(3)

prev = nil
current = head

while current
  nxt = current.next
  current.next = prev
  prev = current
  current = nxt
end

head = prev

while head
  print "#{head.data} -> "
  head = head.next
end

print "nil"