# In the optimal solution, we use the `.tally` method,
# which converts the array into an element-frequency hash map.

# nums = [1,2,3,1]
nums = [1,2,3,4]

frequency_map = nums.tally

frequency_map.each do |key, value|

  if value > 1
    p "Duplicate number found: #{key} appears #{value} times"
    return
  end
end

p "No duplicates found"