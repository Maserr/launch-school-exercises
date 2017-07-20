=begin

Write a method that takes an Array as an argument, and reverses its elements in
place; that is, mutate the Array passed in to this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
list == ["abc"]

list = []
reverse!([]) # => []
list == []

=end

def reverse!(array)
  number = array.length / 2

  number.times do |index|
    array[index], array[-1 - index] = array[-1 - index], array[index]
  end

  array
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
# list == [4, 3, 2, 1]
p list, result
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
# list == ["e", "d", "c", "b", "a"]
p list

list = ['abc']
reverse!(list) # => ["abc"]
# list == ["abc"]
p list

list = []
reverse!([]) # => []
# list == []
p list
