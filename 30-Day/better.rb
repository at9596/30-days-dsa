require 'pqueue'

def find_kth_largest(nums, k)
  heap = []

  nums.each do |num|
    heap << num
    heap.sort!

    heap.shift if heap.length > k
  end

  heap.first
end


nums = [3, 2, 1, 5, 6, 4]
k = 2

puts find_kth_largest(nums, k)