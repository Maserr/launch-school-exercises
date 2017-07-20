=begin

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

=end

def crunch(string)
  # string.squeeze
  index = 0
  crunch_text = ""

  while index <= string.length - 1
    crunch_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end

  crunch_text
end

puts crunch('ddaaiillyy ddoouubbllee') # => 'daily double'
puts crunch('4444abcabccba')           # => '4abcabcba'
puts crunch('ggggggggggggggg')         # => 'g'
puts crunch('a')                       # => 'a'
puts crunch('')                        # => ''
