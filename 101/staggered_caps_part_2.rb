# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

def staggered_case(string)
  index = 0
  staggered_string = string.chars.map do |char|
    if char =~ (/[a-zA-Z]/)
      index += 1
    end
    if index.odd?
      char.upcase
    else
      char.downcase
    end
  end

  staggered_string.join
end

puts staggered_case('I Love Launch School!')     # => 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL_CAPS')                  # => 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') # => 'IgNoRe 77 ThE 444 nUmBeRs'
