# What about finding the longest paragraph or longest word? How would we go
# about solving that problem?

def get_longest_paragraph(text)
  paragraphs = File.read(text).split(/\n/)
  longest_paragraph = paragraphs.max_by { |paragraph| paragraph.length }

  longest_paragraph
end

def get_longest_word(text)
  words = File.read(text).split.map! { |word| word.gsub(/[.,!?]/, "") }
  longest_word = words.max_by { |word| word.length }

  longest_word
end

puts get_longest_paragraph("example_text.txt")
puts get_longest_word("example_text.txt")
