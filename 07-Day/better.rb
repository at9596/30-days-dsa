# Valid Palindrome - Two Pointer Approach
# Convert the string to lowercase
# Remove all non-alphanumeric characters
# Use two pointers from left and right
# Compare characters while moving both pointers

# s = "A man, a plan, a canal: Panama"
s = "race a car"

cleaned = s.downcase.gsub(/[^a-z0-9]/, "")

left = 0
right = cleaned.length - 1

while left < right

  if cleaned[left] != cleaned[right]
    p false
    return
  end

  left += 1
  right -= 1
end

p true