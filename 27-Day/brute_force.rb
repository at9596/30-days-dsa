def rob(nums, index = 0)
  return 0 if index >= nums.length

  include_current = nums[index] + rob(nums, index + 2)
  exclude_current = rob(nums, index + 1)

  [include_current, exclude_current].max
end

nums = [2,7,9,3,1]

puts rob(nums)