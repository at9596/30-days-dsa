# We solved it optimam way using frequency sort

# s = "anagram"
# t = "nagaram"
s = "rat"
t = "car"

count = Hash.new(0)

s.each_char do|ch|
  count[ch]+=1
end

t.each_char do |ch|
  count[ch]-=1
end

p count.values.all?(&:zero?)