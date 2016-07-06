# Write a method that takes a String as an argument, and returns a new String
# that contains the original value using a staggered capitalization scheme in
# which every other character is capitalized, and the remaining characters are
# lowercase. Characters that are not letters should not be changed, but count as
# characters when switching between upper and lowercase.

def staggered_case(string, downcase = false)
  staggered_string = string.chars.map.with_index do |char, index|
    case downcase
    when index.even? then char.downcase
    when index.odd? then char.upcase
    end
  end

  staggered_string.join
end

puts staggered_case('I Love Launch School!', true) # => 'i lOvE LaUnCh sChOoL!'
puts staggered_case('ALL_CAPS')                    # => 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers')   # => 'IgNoRe 77 ThE 444 NuMbErS'
