# Write a method that rotates a string instead of an array. Do the same thing
# for integers. You may use rotate_array from inside your new method.

def rotate_string(string)
  string[1..-1] + string[0]
end

puts rotate_string("!important") # => "important!"
puts rotate_string("hello")      # => "elloh"
puts rotate_string("h")          # => "h"

greeting = "Hey!"
puts rotate_string(greeting) == "ey!H"  # => true
puts greeting == "Hey!"                 # => true


def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end

puts rotate_integer(9012345678) # => 123456789
puts rotate_integer(192837)     # => 928371
puts rotate_integer(1)          # => 1

number = 123
puts rotate_integer(number) == 231  # => true
puts number == 123                # => true
