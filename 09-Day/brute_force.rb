# Group Anagrams - Brute Force Approach
# Compare every string with every other string
# Sort characters and check whether both strings are anagrams
# Group matching strings together

strs = ["eat","tea","tan","ate","nat","bat"]

visited = Array.new(strs.length, false)

result = []

(0...strs.length).each do |i|

  next if visited[i]

  group = [strs[i]]

  visited[i] = true

  ((i + 1)...strs.length).each do |j|

    if strs[i].chars.sort == strs[j].chars.sort

      group << strs[j]
      visited[j] = true
    end
  end

  result << group
end

p result