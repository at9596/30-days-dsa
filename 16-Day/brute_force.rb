class MinStack
  def initialize
    @stack = []
  end

  def push(val)
    @stack.push(val)
  end

  def pop
    @stack.pop
  end

  def top
    @stack.last
  end

  def get_min
    min = @stack[0]

    @stack.each do |num|
      min = num if num < min
    end

    min
  end
end

min_stack = MinStack.new

min_stack.push(-2)
min_stack.push(0)
min_stack.push(-3)

puts min_stack.get_min # -3
min_stack.pop
puts min_stack.top # 0
puts min_stack.get_min # -2