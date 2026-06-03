class MyQueue
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def push(x)
    @in_stack << x
  end

  def pop
    move if @out_stack.empty?
    @out_stack.pop
  end

  def peek
    move if @out_stack.empty?
    @out_stack[-1]
  end

  def empty
    @in_stack.empty? && @out_stack.empty?
  end

  def move
    @out_stack << @in_stack.pop until @in_stack.empty?
  end
end

obj = MyQueue.new
obj.push(1) # in_stack  = [1], out_stack = []
obj.push(2) # in_stack  = [1,2,3], out_stack = []
obj.push(3) # in_stack  = [1, 2, 3] , out_stack = []
p obj.peek  # in_stack  = [], out_stack = [3, 2, 1]
obj.pop     # in_stack  = [], out_stack = [3, 2, 1]
p obj.peek

