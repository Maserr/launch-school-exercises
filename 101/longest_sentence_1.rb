# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end with
# periods (.), exclamation points (!), or question marks (?). Any sequence of
# characters that are not spaces or sentence-ending characters should be treated
# as a word. You should also print the number of words in the longest sentence.

def print_longest_sentence(text)
  sentence = ""
  sentence_num_words = 0

  File.read(text).split(/[.?!]/).each do |line|
    sentence = line if line.strip.size > sentence.size
    sentence_num_words= sentence.split.size
  end

  puts "The longest sentence contains #{sentence_num_words} words: \n\n"
  puts "#{sentence}"
end

print_longest_sentence("example_text.txt")
print_longest_sentence("example_text_2.txt")
