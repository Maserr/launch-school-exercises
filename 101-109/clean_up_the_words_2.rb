# If you originally wrote this method with regular expressions, try writing it
# without regular expressions.

ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m"] + \
           ["n", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",]

def cleanup(string)
  string_splitted = string.chars
  string_splitted.each_with_index do |char, index|
    if !ALPHABET.include?(char.downcase)
      string_splitted[index] = " "
    end
  end

  string_splitted.join.squeeze(" ")
end

puts cleanup("---what's my +*& line?") # => ' what s my line '
