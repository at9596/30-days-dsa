def find_kth_largest(nums, k)
  nums.sort.reverse[k - 1]
end

nums = [3, 2, 1, 5, 6, 4]
k = 2

puts find_kth_largest(nums, k)