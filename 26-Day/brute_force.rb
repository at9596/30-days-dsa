def climb_stairs(n)
  return 1 if n <= 1
  climb_stairs(n - 1) + climb_stairs(n - 2)
end
# p climb_stairs(1)
# p climb_stairs(2)
# p climb_stairs(3)
# p climb_stairs(4)
# p climb_stairs(5)
p climb_stairs(8)