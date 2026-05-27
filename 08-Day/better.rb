# Longest Substring Without Repeating Characters
# Better Approach using Sliding Window
# Use two pointers to maintain the current window
# Store character frequency in a hash map
# Remove characters from the left side until duplicates are removed

s = "abcabcbb"

  left = 0
  max_len = 0
  last_seen = {}

  s.chars.each_with_index do |char, right|
    if last_seen.key?(char) && last_seen[char] >= left
      left = last_seen[char] + 1
    end

    last_seen[char] = right
    max_len = [max_len, right - left + 1].max
  end


p max_len