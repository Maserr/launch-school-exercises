=begin

Write a method that computes the sum of all numbers between 1 and some other
number that are a multiple of 3 or 5. For instance, if the supplied number is
20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

=end

def multisum(number)
  total = 0
  (1..number).each { |num| total += num if num % 3 == 0 || num % 5 == 0 }

  total
end

p multisum(3)    # => 3
p multisum(5)    # => 8
p multisum(10)   # => 33
puts multisum(1000) # => 234168
