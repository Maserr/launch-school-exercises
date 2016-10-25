# anagrams.rb

# Write a program that, given a word and a list of possible anagrams, selects
# the correct sublist that contains the anagrams of the word.
#
# For example, given the word "listen" and a list of candidates like "enlists"
# "google" "inlets" "banana" the program should return a list containing
# "inlets". Please read the test suite for exact rules of anagrams.

class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    words.select { |word| anagram?(word, @word) }
  end

  private

  def anagram?(word1, word2)
    return false if word1.downcase == word2.downcase
    word1.downcase.chars.sort == word2.downcase.chars.sort
  end
end
