# Longest Substring Without Repeating Characters
# Brute Force Approach
# Generate all substrings
# Check whether the substring contains duplicate characters
# Update the maximum length

# s = "abcabcbb"
s = "bbbbb"

max_length = 0
n = s.length

(0...n).each do |i|

  current = ""

  (i...n).each do |j|
    break if current.include?(s[j])
    current += s[j]
    max_length = [max_length, current.length].max
  end
end

p max_length