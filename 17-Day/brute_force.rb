class MyQueue
  def initialize
    @stack = []
  end

  def push(x)
    @stack.push(x)
  end

  def pop
    temp = []

    while !@stack.empty?
      temp.push(@stack.pop)
    end

    result = temp.pop

    while !temp.empty?
      @stack.push(temp.pop)
    end

    result
  end

  def peek
    temp = []

    while !@stack.empty?
      temp.push(@stack.pop)
    end

    result = temp.last

    while !temp.empty?
      @stack.push(temp.pop)
    end

    result
  end

  def empty
    @stack.empty?
  end
end

obj = MyQueue.new
obj.push(1)
obj.push(2)
obj.push(3)
p obj.peek
p "after pop"
obj.pop
p obj.peek
obj.pop
obj.pop
p obj.empty