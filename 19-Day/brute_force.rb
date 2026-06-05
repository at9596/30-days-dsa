def search_position(nums, target)
  nums.each_with_index do|num,index|
    if num >= target
      return index
    end
  end
  return nums.length
end
nums = [1,3,5,6]
# target = 5
target = 0
p search_position(nums,target)