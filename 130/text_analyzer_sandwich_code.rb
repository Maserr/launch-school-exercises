# Fill out the rest of the Ruby code below so that output similar to "Sample
# Output" is sent to the terminal. To get such output, read some text from a
# file in process and pass that text to the block provided to each call. Note,
# that the everything you need to work on is either part of the process method
# or part of one of the 3 blocks. No other additions or changes are required.
# The text you use does not have to produce the same numbers as the sample
# output, but should have the indicated format.
#
# class TextAnalyzer
#   def process
#     # your implementation
#   end
# end
#
# analyzer = TextAnalyzer.new
# analyzer.process { |file| puts # your implementation }
# analyzer.process { |file| puts # your  implementation }
# analyzer.process { |file| puts # your implementation }
#
#
# Sample Output:
#
# 3 paragraphs
# 25 lines
# 306 words

class TextAnalyzer
  def process
    file = File.open('sample.txt', 'r')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |file| puts "#{file.split("\n\n").size} paragraphs" }
analyzer.process { |file| puts "#{file.lines.size} lines" }
analyzer.process { |file| puts "#{file.split.size} words" }

# Output:
#
# 3 paragraphs
# 5 lines
# 35 words
