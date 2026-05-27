# Valid Palindrome - Brute Force Approach
# Convert the string to lowercase
# Remove all non-alphanumeric characters
# Reverse the string and compare it with the original string

# s = "A man, a plan, a canal: Panama"
s = "race a car"
cleaned = s.downcase.gsub(/[^a-z0-9]/, "")

if cleaned == cleaned.reverse
  p true
else
  p false
end