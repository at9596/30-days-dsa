# You are given : a sorted array
# efficently solved it with the help of binary search.

def search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    # we can do mid = (left + right) / 2
    mid = left + (right - left) / 2 

    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  -1
end

nums = [122, 233, 256, 345, 349, 354]
target = 349
# target = -19

p search(nums, target)