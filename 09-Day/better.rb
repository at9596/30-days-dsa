# Group Anagrams - Optimal Approach
# Sort each string and use it as a key in the hash map
# Store all anagrams under the same sorted key

strs = ["eat","tea","tan","ate","nat","bat"]

hash = Hash.new { |h, k| h[k] = [] }

strs.each do |word|
  key = word.chars.sort.join
  hash[key] << word
end

p hash.values