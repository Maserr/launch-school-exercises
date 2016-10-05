# In the previous exercise, you wrote a number guessing game that determines a
# secret number between 1 and 100, and gives the user 7 opportunities to guess
# the number.
#
# Modify your solution to accept a low and high value when the GuessingGame
# object is created, and use these values when computing a secret number for the
# game. You should also modify the maximum number of guesses so the user can
# always win if she uses a good strategy. This number can be computed as follows:
#
# Math.log2(size_of_range).to_i + 1

class Guesser
  RESULT_MESSAGE = {
    high: 'Your number is too high.',
    lose: 'You are out of guesses. You lose!',
    low:  'Your number is too low.',
    win:  'Your guess the number. You win!'
  }.freeze

  def initialize(range_start, range_end)
    @range = range_start..range_end
    @max_guesses = Math.log2(@range.size).to_i + 1
  end

  def play
    reset
    @max_guesses.downto(1) do |remaining_guesses|
      display_remaining_guesses(remaining_guesses)
      result = check_guess(player_guess)
      puts RESULT_MESSAGE[result]
      puts
      return if result == :win
    end
    puts RESULT_MESSAGE[:lose]
  end

  private

  def display_remaining_guesses(remaining)
    if remaining == 1
      puts "You have #{remaining} guess remaining"
    else
      puts "You have #{remaining} guesses remaining."
    end
  end

  def check_guess(guess)
    if guess < @number
      return :low
    elsif guess > @number
      return :high
    else
      return :win
    end
  end

  def player_guess
    loop do
      print "Enter a number between #{@range.first} and #{@range.last}: "
      guess = gets.chomp.to_i
      return guess if @range.cover?(guess)
      print "Invalid guess. "
    end
  end

  def reset
    system "clear"
    @number = rand(@range)
  end
end

game = Guesser.new(500, 1500)
game.play
