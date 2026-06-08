def check_inclusion(s1, s2)
  return false if s1.length > s2.length

  s1_count = Array.new(26, 0)
  window_count = Array.new(26, 0)

  s1.each_char do |ch|
    s1_count[ch.ord - 'a'.ord] += 1
  end

  k = s1.length

  (0...k).each do |i|
    window_count[s2[i].ord - 'a'.ord] += 1
  end

  return true if s1_count == window_count

  (k...s2.length).each do |i|
    window_count[s2[i].ord - 'a'.ord] += 1
    window_count[s2[i - k].ord - 'a'.ord] -= 1

    return true if s1_count == window_count
  end

  false
end

s1 = "abx"
s2 = "eidbaooo"

puts check_inclusion(s1, s2)