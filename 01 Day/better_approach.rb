# Use a hash map to store previously seen elements.
# Check whether (target - current_element) exists in the hash map.
# If found, return the indices of both elements.
nums = [2,7,11,15]
target = 9
hash = {}

nums.each_with_index do |num, index|
  diff = target - num
  if(hash.key?(diff))
    p [hash[diff], index]
    return
  end

  hash[num] = index
end