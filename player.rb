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
  
  def count
    self.hand.map { |c| c.count }.inject(&:+)
  end
  
  def pick_card(card)
    self.pick = card
    self.hand.sort! { |a,b| a.count <=> b.count }
    if card
      if card.count < self.hand.last.count
        popped_card = self.hand.pop
        self.hand << card
        return popped_card
      else
        return card
      end
    else
      raise Exception.new('Invalid Card')
    end
  end
end