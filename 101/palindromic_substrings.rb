# Write a method that returns a list of all substrings of a string that are
# palindromic. That is, each substring must consist of the same sequence of
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. Duplicate
# palindromes should be included multiple times.
#
# You may (and should) use the substrings method you wrote in the previous
# exercise.
#
# For the purposes of this exercise, you should consider all characters and pay
# attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor
# "Abc-bA" are. In addition, assume that single characters are not palindromes.

def substrings_at_start(string)
  substring = ""
  substring_list = []

  string.chars.each do |char|
    substring += char
    substring_list << substring
  end

  substring_list
end

def substrings(string)
  substring_list = []
  temp_string = string

  string.size.times do
    substring_list << substrings_at_start(temp_string)
    temp_string = temp_string[1..-1]
  end

  substring_list.flatten
end

def palindrome?(string)
  string == string.reverse
end

def palindromes(string)
  palindromes = []

  substrings(string).each do |string|
    if string.size > 1 && palindrome?(string)
      palindromes << string
    end
  end

  palindromes
end

p palindromes('abcd')   # => []
p palindromes('madam')  # => ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') # => [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') # => [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
