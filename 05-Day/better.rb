# Maximum Subarray - Kadane's Algorithm
# We use Kadane's Algorithm to find the maximum subarray sum.
# If the current sum becomes negative,
# start a new subarray from the current element.

nums = [5,4,-1,7,8]
# nums = [-2,1,-3,4,-1,2,1,-5,4]

current_sum = nums[0]
max_sum = nums[0]
n = nums.count

(1...n).each do |i|
  current_sum = [nums[i], current_sum + nums[i]].max
  max_sum = [max_sum, current_sum].max
end

p max_sum