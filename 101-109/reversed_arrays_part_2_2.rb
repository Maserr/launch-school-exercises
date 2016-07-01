=begin

An even shorter solution is possible by using either inject or each_with_object.
Just for fun, read about these methods in the Enumerable module documentation,
and try using one in your reverse method.

=end

def reverse(array)
  # array.each_with_object([]) { |elem, new_array| new_array.unshift(elem) }
  array.inject([]) { |new_array, elem| new_array.unshift(elem) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b c d e)) == %w(e d c b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

list = [1, 2, 3]                         # => [1, 2, 3]
p list
new_list = reverse(list)                 # => [3, 2, 1]
p new_list
puts list.object_id != new_list.object_id     # => true
puts list == [1, 2, 3]                        # => true
puts new_list == [3, 2, 1]                    # => true
