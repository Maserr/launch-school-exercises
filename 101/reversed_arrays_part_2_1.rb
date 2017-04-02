=begin

Write a method that takes an Array, and returns a new Array with the elements of
the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method you
wrote in the previous exercise.

Examples:

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b c d e)) == %w(e d c b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
list.object_id != new_list.object_id  # => true
list == [1, 2, 3]                     # => true
new_list == [3, 2, 1]                 # => true

=end

def reverse!(array)
  number = array.length / 2

  number.times do |index|
    array[index], array[-1 - index] = array[-1 - index], array[index]
  end

  array
end

def reverse(array)
  new_array = []
  array.each { |elem| new_array << elem }
  reverse!(new_array)
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
