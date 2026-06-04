# Traverse all elements
# check target element is found
# Return index of target
# 

def search(nums,target)
  nums.each_with_index do|num,index|
    return index if num == target
  end
  return -1
end

nums = [122,233,256,345,349,354]
target = 349
# target = -19

p search(nums, target)