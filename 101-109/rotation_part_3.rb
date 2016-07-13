# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate
# again to 321759. Keep the first 3 digits fixed in place and rotate again to
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the
# final 2 digits to get 321579. The resulting number is called the maximum
# rotation of the original number.
#
# Write a method that takes an integer as argument, and returns the maximum
# rotation of that argument. You can (and probably should) use the
# rotate_rightmost_digits method from the previous exercise.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  digits = number.to_s.chars

  unrotated_part = digits[0..(-n - 1)]
  rotated_part = rotate_array(digits[-n..-1])

  (unrotated_part + rotated_part).join.to_i
end

def max_rotation(number)
  digits = number.to_s.chars

  number.to_s.size.downto(2) do |index|
    digits = rotate_rightmost_digits(digits.join.to_i, index).to_s.chars
  end

  digits.join.to_i
end

p max_rotation(735291)        # => 321579
p max_rotation(3)             # => 3
p max_rotation(35)            # => 53
p max_rotation(105)           # => 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) # => 7_321_609_845
