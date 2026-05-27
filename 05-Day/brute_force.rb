# Maximum Subarray
# We solve this problem using the brute force approach.
# The outer loop selects the starting index.
# The inner loop calculates the sum of each subarray
# and updates the maximum sum.

# nums = [5,4,-1,7,8]
# nums = [-2,1,-3,4,-1,2,1,-5,4]
nums = [1]
max_sum= nums[0]
n = nums.count
(0...n).each do|i|
  sum = 0
  (i...n).each do|j|
    sum += nums[j]
    max_sum = [max_sum, sum].max
  end
  
end

p max_sum
