def longest_common_prefix(strs)
  return "" if strs.empty?

  first = strs[0]

  first.length.times do |i|
    char = first[i]

    strs.each do |word|
      return first[0...i] if i >= word.length || word[i] != char
    end
  end

  first
end

p longest_common_prefix(["flower", "flow", "flight"])
