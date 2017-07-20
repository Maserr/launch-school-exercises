# roman_numerals.rb

class Fixnum
  ROMAN_NUMERALS = {
    "M"   => 1000,
    "CM"  => 900,
    "D"   => 500,
    "CD"  => 400,
    "C"   => 100,
    "XC"  => 90,
    "L"   => 50,
    "XL"  => 40,
    "X"   => 10,
    "IX"  => 9,
    "V"   => 5,
    "IV"  => 4,
    "I"   => 1
  }

  def to_roman
    roman_numeral = ""
    number = self

    ROMAN_NUMERALS.each do |symbol, value|
      quotient, number = number.divmod(value)
      roman_numeral += symbol * quotient
    end

    roman_numeral
  end
end
