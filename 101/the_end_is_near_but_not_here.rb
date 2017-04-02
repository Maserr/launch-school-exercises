# Write a method that returns the next to last word in the String passed to it
# as an argument.
#
# Words are any sequence of non-blank characters.
#
# You may assume that the input String will always contain at least two words.

def penultimate(string)
  string.split[-2]
end

puts penultimate('last word')               # => 'last'
puts penultimate('Launch School is great!') # => 'is'


def middle_word(string)
  middle_word = ""
  words = string.split

  if words.size.odd?
    middle_word = words[words.size / 2]
  else
    # middle_word = "#{ words[words.size / 2 - 1]} #{words[words.size / 2] }"
    middle_word = "Not middle word :("
  end

  middle_word
end

puts middle_word('')                        # => 'Not middle word :('
puts middle_word('The last word')           # => 'last'
puts middle_word('last word')               # => 'Not middle word :('
puts middle_word('Launch School is great!') # => 'Not middle word :('
puts middle_word('Launch School is awesomely great!') # => 'is'
