def rob(nums)
  include_house = 0
  exclude_house = 0

  nums.each do |money|
    new_include = exclude_house + money
    new_exclude = [include_house, exclude_house].max

    include_house = new_include
    exclude_house = new_exclude
  end

  [include_house, exclude_house].max
end

nums = [2, 7, 9, 3, 1]

puts rob(nums)