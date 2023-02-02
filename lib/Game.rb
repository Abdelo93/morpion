require_relative 'Player'
class Game

    def initialize
        puts "Joueur 1 : C'est quoi ton blaze?"
        name1 = gets.chomp

        puts 'Tu préfère "X" ou "O"'
        sign1 = gets.chomp

        puts "Joueur 2 : et toi c'est quoi ton blaze ?"
        name2 = gets.chomp

        puts 'Tu préfère "X" ou "O"'
        sign2 = gets.chomp

        player1 = Player.new(name1,name2)
        player2 = Player.new(sign1,sign2)
    end 

end 