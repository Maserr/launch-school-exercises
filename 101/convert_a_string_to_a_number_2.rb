# Write a hexadecimal_to_integer method that converts a string representing a
# hexadecimal number to its integer value.

DIGITS = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4,
           "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9,
           "a" => 10, "b" => 11, "c" => 12, "d" => 13, "e" => 14, "f" => 15 }

def hexadecimal_to_integer(hex)
  digits = hex.chars.map { |char| DIGITS[char.downcase] }

  integer = 0
  digits.reverse.each_with_index do |value, index|
    integer += value * 16**index
  end

  integer
end

puts hexadecimal_to_integer('4D9f')  # => 19871
