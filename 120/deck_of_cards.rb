# Using the Card class from the previous exercise, create a Deck class that
# contains all of the standard 52 playing cards. Use the following code to start
# your work:
#
# The Deck class should provide a #draw method to draw one card at random. If
# the deck runs out of cards, the deck should reset itself by generating a new
# set of 52 cards.

class Card
  include Comparable

  VALUES = { "Jack" => 11, "Queen" => 12, "King" => 13, "Ace" => 14 }

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def value
    VALUES.fetch(@rank, @rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def to_s
    "#{@rank} of #{@suit}"
  end
end

class Deck
  RANKS = (2..10).to_a + %w(Jack Queen King Ace).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    new_deck
  end

  def draw
    new_deck if @cards.empty?
    @cards.pop
  end

  private

  def new_deck
    @cards = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end

    @cards.shuffle!
  end
end

deck = Deck.new
drawn = []
52.times { drawn << deck.draw }
puts drawn.count { |card| card.rank == 5 } == 4
puts drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
puts drawn != drawn2 # Almost always.
