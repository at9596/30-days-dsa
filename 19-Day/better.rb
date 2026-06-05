def search_position(nums, target)
  start = 0
  last = nums.length - 1
  while(start <= last)
    mid = start + (last - start) / 2 
    if (nums[mid] == target)
      return mid
    elsif(nums[mid] < target)
       start = mid + 1
    elsif(nums[mid]> target)
       last = mid - 1
    end
  end
  return start
end
nums = [1,3,5,6]
# target = 5
target = 7
p search_position(nums,target)