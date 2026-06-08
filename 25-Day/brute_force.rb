def check_inclusion(s1, s2)
  k = s1.length
  sorted_s1 = s1.chars.sort.join

  (0..s2.length - k).each do |i|
    substring = s2[i, k]

    return true if substring.chars.sort.join == sorted_s1
  end

  false
end

s1 = "ab"
s2 = "eidbaooo"
p check_inclusion(s1, s2)