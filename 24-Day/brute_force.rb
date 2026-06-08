def find_max_average(nums, k)
  max_average = -Float::INFINITY

  (0..nums.length - k).each do |i|
    sum = 0

    (i...i + k).each do |j|
      sum += nums[j]
    end

    average = sum.to_f / k
    max_average = [max_average, average].max
  end

  max_average
end

# nums = [1,12,-5,-6,50,3]
# k = 4

 nums = [5]
 k = 1
p find_max_average(nums, k)
