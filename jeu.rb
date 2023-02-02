require 'bundler'

#Bundler.require
require 'pry'

require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Board'


puts "Joueur 1 : C'est quoi ton blaze? ?"
print "> "
name1 = gets.chomp
puts 'Tu préfère "X" ou "O"'
print "> "
sign1 = gets.chomp.capitalize
                           
while sign1 != "O" && sign1 != "X"
    puts 'Tu ne peux utiliser que "X" ou "O"'
    sign1 = gets.chomp.capitalize
end
# puts sign1

puts
puts "Joueur 2 : Et toi, c'est quoi ton blaze?"
print "> "
name2 = gets.chomp

answers=["X","O"]
answers.delete(sign1)
sign2 = answers[0]

sign2 = answers[0]
# puts sign2


puts "#{name2}, Pour cette partie tu seras le : #{sign2} "

player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)

puts
puts "[PRESS ENTER]"
gets
system 'clear'
puts "C'est parti !"
puts
puts "[PRESS ENTER]"
gets
system 'clear'

board = Board.new
board.show_board

while board.hash_cases.values.include? " "
    puts
    puts "#{name1}, quel case? "
    board.player_choise(player1)
    system 'clear'
    board.show_board
    puts
    puts "#{name2}, quel case?"
    board.player_choise(player2) 
    system 'clear'
    board.show_board
end