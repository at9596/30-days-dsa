def find_max_average(nums, k)
  window_sum = nums[0...k].sum
  max_sum = window_sum

  (k...nums.length).each do |i|
    window_sum += nums[i] - nums[i - k]
    max_sum = [max_sum, window_sum].max
  end

  max_sum.to_f / k
end

nums = [1,12,-5,-6,50,3]
k = 4

# nums = [5]
# k = 1
p find_max_average(nums, k)
