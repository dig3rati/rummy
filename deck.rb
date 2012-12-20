require 'card'

class Deck
  MAX_CARDS = 52
  
  attr_accessor :cards, :packs
  
  def initialize(num = 1)
    self.cards = []
    self.packs = num
    (0..num-1).collect do
      self.cards += (0..MAX_CARDS-1).to_a.shuffle.collect { |id| Card.new(id) }
    end
    self
  end
  
  def shuffle
    self.cards.shuffle
  end
  
  def distribute(*players)
    Player::HAND_SIZE.times do
      players.each { |player| player.hand << self.cards.shift }
    end
    self
  end
end