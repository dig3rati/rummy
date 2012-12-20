require 'player'
require 'card'
require 'deck'

class Game
  attr_accessor :players, :deck, :board, :packs, :joker
  
  def initialize(names, packs)
    self.players = names.map { |name| Player.new(name) }
    self.packs = packs
    self.deck = Deck.new(packs)
    self.board = []
    self
  end
  
  def shuffle_and_distribute
    self.deck.distribute(*self.players)
    self.board = [self.deck.cards.shift]
    self.joker = self.deck.cards.shuffle.shift
    self.joker.wild = true
    self
  end
end