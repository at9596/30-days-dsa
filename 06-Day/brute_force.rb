# Valid Anagram
# We are given two strings s, and t, s and t consist of lowercase English letters
# We solved this by sorting , 
# Sort both string 
# Return true if strings are equal
# Return false if strings are not equal.

s = "anagram"
t = "nagaram"
# s = "rat"
# t = "car"
p s.chars.sort.join('') == t.chars.sort.join('')