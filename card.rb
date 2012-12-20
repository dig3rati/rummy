class Card
  RANKS = {
    'A' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6.
    '7' => 7.
    '8' => 8,
    '9' => 9,
    '10' => 10,
    'J' => 11,
    'Q' => 12,
    'K' => 13
  }
  SUITS = %w{Heart Diamond Club Spade}
  
  attr_accessor :rank, :suit, :wild
  
  def initialize(id)
    self.rank = RANKS.keys[id % 13]
    self.suit = SUITS[id % 4]
    self.wild = false
    self
  end
end