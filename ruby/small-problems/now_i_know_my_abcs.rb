# A collection of spelling blocks has two letters per block, as shown in this
# list:
#
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
#
# This limits the words you can spell with the blocks to just those words that
# do not use both letters from any given block. Each block can only be used once.
#
# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

BLOCKS = [["B", "O"], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"],
          ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"],
          ["V", "I"], ["L", "Y"], ["Z", "M"]].freeze

def block_word?(word)
  used_chars = []

  word.chars.each do |char|
    return false if used_chars.include?(char)
    BLOCKS.each do |elem|
      used_chars << elem[0] << elem[1] if elem.include?(char)
    end
  end

  true
end

puts block_word?('BATCH') # => true
puts block_word?('BUTCH') # => false
