# Create an object-oriented number guessing class for numbers in the range 1 to
# 100, with a maximum limit of 7 guesses per game. The game should play like
# this:
#
# game = PingGame.new
# game.play
#
# You have 7 guesses remaining.
# Enter a number between 1 and 100: 104
# Invalid guess. Enter a number between 1 and 100: 50
# Your guess is too low
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 75
# Your guess is too low
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 85
# Your guess is too high
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 0
# Invalid guess. Enter a number between 1 and 100: 80
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 81
# Your guess is too low
# You win!
#
# game.play
#
# You have 7 guesses remaining.
# Enter a number between 1 and 100: 50
# Your guess is too high
#
# You have 6 guesses remaining.
# Enter a number between 1 and 100: 25
# Your guess is too low
#
# You have 5 guesses remaining.
# Enter a number between 1 and 100: 37
# Your guess is too high
#
# You have 4 guesses remaining.
# Enter a number between 1 and 100: 31
# Your guess is too low
#
# You have 3 guesses remaining.
# Enter a number between 1 and 100: 34
# Your guess is too high
#
# You have 2 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low
#
# You have 1 guesses remaining.
# Enter a number between 1 and 100: 32
# Your guess is too low
# You are out of guesses. You lose.
#
# Note that a game object should start a new game with a new number to guess
# with each call to #play.

class PingGame
  MAX_GUESSES = 7
  RANGE = 1..100
  RESULT_MESSAGE = {
    high: 'Your number is too high.',
    lose: 'You are out of guesses. You lose!',
    low:  'Your number is too low.',
    win:  'Your guess the number. You win!'
  }.freeze

  def play
    reset
    MAX_GUESSES.downto(1) do |remaining_guesses|
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
      puts "Enter a number between #{RANGE.first} and #{RANGE.last}:"
      guess = gets.chomp.to_i
      return guess if RANGE.cover?(guess)
      puts "Invalid guess."
    end
  end

  def reset
    system "clear"
    @number = rand(RANGE)
  end
end

game = PingGame.new
game.play
