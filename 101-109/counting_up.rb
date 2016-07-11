# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.
#
# You may assume that the argument will always be a valid integer that is
# greater than 0.

def sequence(number)
  return -1.downto(number).to_a if number < 0
  return 1.upto(number).to_a
end

p sequence(5)  # => [1, 2, 3, 4, 5]
p sequence(3)  # => [1, 2, 3]
p sequence(1)  # => [1]
p sequence(-1) # => [-1]
p sequence(-2) # => [-1, -2]
