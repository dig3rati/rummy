require 'card'

class Deck
  MAX_CARDS = 52
  
  attr_accessor :cards
  
  def initialize
    self.cards = (0..MAX_CARDS-1).to_a.shuffle.collect { |id| Card.new(id) }
  end
end