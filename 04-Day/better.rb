# We can solved it using prefix-suffix techinques intead

# nums = [1,2,3,4]
nums = [-1,1,0,-3,3]
n = nums.length
prod_array = []

left = 1

# Calculate Prefix
(0...n).each do|i|
  prod_array[i] = left
  left *= nums[i]
end

# Calculate product with suffix
right = 1

(n-1).downto(0) do |j|
  prod_array[j] *= right
  right *= nums[j]
end
p prod_array