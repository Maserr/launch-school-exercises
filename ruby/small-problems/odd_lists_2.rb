=begin

Write a companion method that returns the 2nd, 4th, 6th, and so on elements of
an array. Try rewriting your oddities method using a different set of method
calls

=end

def pairs(array)
  (1...array.size).step(2).map { |index| array[index] }
end

p pairs([2, 3, 4, 5, 6])  # => [3, 5]
p pairs(['abc', 'def'])   # => ['def']
p pairs([123])            # => []
p pairs([])               # => []
