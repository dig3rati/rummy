require 'card'

class Player
  HAND_SIZE = 13
  
  attr_accessor :name, :hand, :pick
  
  def initialize(name)
    self.name = name
    self.hand = []
    self
  end
  
  def arrange_hand
    
  end
  
  def hand_count
    
  end
end