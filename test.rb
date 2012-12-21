require 'card'
require 'deck'
require 'game'
require 'player'

g = Game.new(['Bhaskar', 'Moto'], 2)
g.shuffle_and_distribute

puts "Deck: #{g.deck.cards}"
puts "Board: #{g.board}"
g.players.each do |player|
  puts "#{player.name}'s Cards: #{player.hand}"
end
puts "Joker: #{g.joker}"

g.start_with('Bhaskar')

puts "Deck: #{g.deck.cards}"
puts "Board: #{g.board}"
g.players.each do |player|
  puts "#{player.name}'s Cards: #{player.hand}"
end
