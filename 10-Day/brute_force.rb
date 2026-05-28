# Start with first word as prefix
# Compare with next words
# If word does not start with prefix:
# remove last character
# Keep shrinking until match found

def longest_common_prefix(strs)
  return "" if strs.empty?

  prefix = strs[0]

  i = 1

  while i < strs.length
    while strs[i].index(prefix) != 0
      prefix = prefix[0...-1]

      return "" if prefix == ""
    end

    i += 1
  end

  prefix
end

p longest_common_prefix(["flower", "flow", "flight"])
