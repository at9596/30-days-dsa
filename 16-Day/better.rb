class MinStack
  def initialize
    @stack = []
    @min_stack = []
  end

  def push(val)
    @stack.push(val)

    if @min_stack.empty?
      @min_stack.push(val)
    else
      @min_stack.push([val, @min_stack.last].min)
    end
  end

  def pop
    @min_stack.pop
    @stack.pop
  end

  def top
    @stack.last
  end

  def get_min
    @min_stack.last
  end
end


min_stack = MinStack.new

min_stack.push(-2)

min_stack.push(0)

min_stack.push(-3)

puts min_stack.get_min # -3

min_stack.pop

puts min_stack.top # 0

puts min_stack.get_min  # -2