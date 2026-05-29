class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

head = Node.new(1)
second = Node.new(2)
third = Node.new(3)
fourth = Node.new(4)

head.next = second
second.next = third
third.next = fourth
fourth.next = second

visited = {}

current = head

while current
  if visited[current]
    puts "Cycle found"
    break
  end

  visited[current] = true
  current = current.next
end