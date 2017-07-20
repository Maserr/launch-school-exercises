=begin

What if we wanted generalize this method to a "power to the n" type method:
cubed, to the 4th power, to the 5th, etc. How would we go about doing so while
still using the multiply method?

=end

def multiply(num1, num2)
  num1 * num2
end

def power(base, exp)
  result = 1
  exp.times { result = multiply(result, base) }
  result
end

puts power(2, 3) # => 8
puts power(5, 2) # => 25
puts power(3, 3) # => 27
