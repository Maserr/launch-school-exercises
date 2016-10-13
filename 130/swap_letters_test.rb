require 'minitest/autorun'
require_relative 'swap_letters'

class TextTest < Minitest::Test
  def test_swap
    origin_text  = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    swapped_text = "Lorem ipsum dolor sit @met, consectetur @dipiscing elit."
    letter_one = "a"
    letter_two = "@"
    text = Text.new(origin_text)

    assert_equal swapped_text, text.swap(letter_one, letter_two)
  end
end
