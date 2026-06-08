def climb_stairs(n)
  return n if n <= 2

  first = 1
  second = 2

  (3..n).each do |_|
    current = first + second
    first = second
    second = current
  end

  second
end

# p climb_stairs(1)
# p climb_stairs(2)
# p climb_stairs(3)
# p climb_stairs(4)
p climb_stairs(5)