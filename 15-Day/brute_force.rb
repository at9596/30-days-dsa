
def is_valid(str)
  prev = ""

  while prev != str
    prev = str
    str = str.gsub("()", "")
         .gsub("{}", "")
         .gsub("[]", "")
  end

  str.empty?
end

# s = "([)]"
s = "([])"

p is_valid(s)