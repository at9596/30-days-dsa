# Product of Array Except Self
# You are given a  nums array. You need to find all the elements of nums array except self.
# I solved it using two loop .
# Outer loop controls, each element
# Inner loop controls the products
# Return each element product
# We can further optimized it, using prefix and suffix pattern

# nums = [1,2,3,4]
nums = [-1,1,0,-3,3]
n = nums.length
prod_array = []
(0...n).each do|i|
  prod = 1
  (0...n).each do|j|
    if(i != j)
      prod *=  nums[j]
    end
  end
  prod_array[i] = prod
end

p prod_array