class Card
  RANKS = %w{A 2 3 4 5 6 7 8 9 10 J Q K}
  SUITS = %w{Heart Diamond Club Spade}
  
  attr_accessor :rank, :suit, :wild
  
  def initialize(id)
    self.rank = RANKS[id % 13]
    self.suit = SUITS[id % 4]
    self.wild = false
    self
  end
end