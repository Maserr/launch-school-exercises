=begin

Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

Example:

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=end

VOWELS = "aeiou"

def remove_vowels(array_strings)
  array_strings.map { |string| string.gsub(/[aeiouAEIOU]/, "") }
  # array_strings.map { |string| string.delete("aeiouAEIOU") }
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) # => %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white))   # => %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ))              # => ['BC', '', 'XYZ']
