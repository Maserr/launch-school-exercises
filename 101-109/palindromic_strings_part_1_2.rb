=begin

Write a method that determines whether or not an array is palindromic; that is,
the element values appear in the same sequence both forwards and backwards in
the array. Now write a method that determines whether or not an array or a
string is palindromic. You may not use an if, unless, or case statement or
modifier.

=end

def palindrome?(arg)
  arg == arg.reverse
end

puts palindrome?('madam')          # => true
puts palindrome?('Madam')          # => false
puts palindrome?("madam i'm adam") # => false
puts palindrome?('356653')         # => true

puts palindrome?([1, 2, 3, 2, 1])  # => true
puts palindrome?(["m", "o", "m"])  # => true
puts palindrome?(["m", "o", "o"])  # => false
puts palindrome?([1, 2, 3, 4, 5])  # => false
