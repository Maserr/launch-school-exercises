# Write a method that will determine whether an integer is a primer. Don't use
# the Primer class.

def is_prime?(integer)
  return false if integer == 1
  (2..(integer - 1)).each { |number| return false if integer % number == 0 }

  true
end

puts is_prime?(2)  # => true
puts is_prime?(25) # => false
puts is_prime?(97) # => true
