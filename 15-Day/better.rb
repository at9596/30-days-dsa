def is_valid(s)
  stack = []

  s.each_char do |char|
    if char == "(" || char == "{" || char == "["
      stack << char
    else
      top = stack.pop

      return false if char == ")" && top != "("
      return false if char == "}" && top != "{"
      return false if char == "]" && top != "["
    end
  end

  stack.empty?
end

# s = "([)]"
s = "([])"

p is_valid(s)