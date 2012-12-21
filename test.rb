require 'card'
require 'deck'
require 'game'
require 'player'
require 'string'

g = Game.new(['Bhaskar', 'Moto'], 2)
g.shuffle_and_distribute

puts "\nDeck: #{g.deck.cards} (#{g.deck.cards.size} Cards)"
puts "Board: #{g.board} (#{g.board.size} Cards)"
g.players.each do |player|
  puts "#{player.name}'s Cards: #{player.hand} (#{player.hand.size} Cards) => #{player.count}"
end
puts "Joker: #{g.joker}"

20.times do
  g.start_with('Bhaskar')
  
  puts "\nDeck: #{g.deck.cards} (#{g.deck.cards.size} Cards)"
  puts "Board: #{g.board} (#{g.board.size} Cards)"
  g.players.each do |player|
    puts "#{player.name}'s Cards:" + " #{player.hand} (#{player.hand.size} Cards) => #{player.count}"
  end
end
