# octal.rb
class Octal
  def initialize(number)
    @number = number
  end

  def to_decimal
    return 0 unless is_octal?(@number)

    decimal = 0

    @number.chars.reverse.each_with_index do |num, idx|
      decimal += num.to_i * (8 ** idx)
    end

    decimal
  end

  private

  def is_octal?(number)
    number.scan(/[0-7]/).join == number
  end
end
