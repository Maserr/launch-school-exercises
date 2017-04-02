# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

p sum(23)          # => 5
p sum(496)         # => 19
p sum(123_456_789) # => 45
