class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

list1 = Node.new(1)
list1.next = Node.new(2)
list1.next.next = Node.new(4)

list2 = Node.new(1)
list2.next = Node.new(3)
list2.next.next = Node.new(4)

arr = []

current = list1
while current
  arr << current.data
  current = current.next
end

current = list2
while current
  arr << current.data
  current = current.next
end

arr.sort!

dummy = Node.new(0)
current = dummy

arr.each do |num|
  current.next = Node.new(num)
  current = current.next
end

head = dummy.next

while head
  print "#{head.data} -> "
  head = head.next
end

print "nil"