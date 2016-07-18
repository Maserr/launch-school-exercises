# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

def stringy(number, start = 1)
  result = []

  number.times do |index|
    if start == 1
      index.even? ? result << 1 : result << 0
    elsif start == 0
      index.even? ? result << 0 : result << 1
    end
  end

  result.join
end

puts stringy(6) # => '101010'
puts stringy(9) # => '101010101'
puts stringy(4) # => '1010'
puts stringy(7) # => '1010101'

puts stringy(4, 0) # => '0101'
puts stringy(7, 0) # => '0101010'
