# Contains Duplicate
# You are given an array.
# Return true if any element appears at least twice in the array.
# Return false if every element appears exactly once.
# We first solve this problem using two loops for better understanding,
# then move to the optimal solution.

nums = [1,2,3,1]
# nums = [1,2,3,4]


n = nums.count

(0...n).each do|i|
  (i+1...n).each do|j|
      if nums[i] == nums[j]
        p "true: duplicate found" 
        return
      end
  end

end

p "false: duplicate not found"