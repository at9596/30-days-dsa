# You are given a nums array containing unique integers and a target element.
# Find the indices of two elements whose sum is equal to the target.
nums = [2,7,11,15]
target = 9

n = nums.count

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    if nums[i] + nums[j] == target
      p "indexes are: #{[i, j]}"
      return
    end
  end
end

p "indexes not found"