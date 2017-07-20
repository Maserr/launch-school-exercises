# word_count.rb
#
# Write a program that given a phrase can count the occurrences of each word in
# that phrase.
#
# For example, if we count the words for the input "olly olly in come free", we
# should get:
#
# olly: 2
# in: 1
# come: 1
# free: 1

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    occurrences = Hash.new(0)

    words.each do |word|
      occurrences[word.downcase] += 1
    end

    occurrences
  end

  private

  def words
    @phrase.scan(/\w+(?:'\w+)*/)
  end
end
