# Write a method that rotates an array by moving the first element to the end of
# the array. The original array should not be modified.
#
# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  array[1..-1] + [array[0]]

  # Alternative A
  # array[1..-1] << array[0]

  # Alternative B
  # new_array = Array.new(array)
  # new_array << new_array.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) # => [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c'])    # => ['b', 'c', 'a']
p rotate_array(['a'])              # => ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]  # => true
puts x == [1, 2, 3, 4]                # => true


# Write a method that rotates a string instead of an array.

def rotate_string(string)
  string[1..-1] + string[0]

  # Alternative using method rotate_array
  # rotate_array(string.chars).join
end

puts rotate_string("!important") # => "important!"
puts rotate_string("hello")      # => "elloh"
puts rotate_string("h")          # => "h"

greeting = "Hey!"
puts rotate_string(greeting) == "ey!H"  # => true
puts greeting == "Hey!"                 # => true


# Doing the same thing for integers.

def rotate_integer(integer)
  (integer.to_s[1..-1] + integer.to_s[0]).to_i

  # Alternative using method rotate_string
  # rotate_string(integer.to_s).to_i

  # Alternative using method rotate_array
  # rotate_array(integer.to_s.chars).join.to_i
end

puts rotate_integer(9012345678) # => 123456789
puts rotate_integer(192837)     # => 928371
puts rotate_integer(1)          # => 1

number = 123
puts rotate_integer(number) == 231  # => true
puts number == 123                  # => true
