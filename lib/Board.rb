require 'bundler'
#Bundler.require
require 'pry'
require_relative 'lib/Game'
require_relative 'lib/Player'
require_relative 'lib/Board'
puts "Joueur 1 : C'est quoi ton blaze ?"
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
puts "Joueur 2 : et toi c'est quoi ton blaze?"
print "> "
name2 = gets.chomp
answers=["X","O"]
answers.delete(sign1)
sign2 = answers[0]
sign2 = answers[0]
# puts sign2
puts "#{name2}, Pour cette partie tu seras le: #{sign2} "
player1 = Player.new(name1,sign1)
player2 = Player.new(name2,sign2)
puts
puts "Appuyez sur entrer"
gets
system 'clear'
puts "C'est parti !"
puts
puts "Appuyez sur entrer"
gets
system 'clear'
board = Board.new
board.show_board

while  board.hash_cases.values.include? " "
while board.hash_cases.values.include? " "
    puts
    puts "#{name1}, lâche une case !"
    board.player_choise(player1)
  16  
lib/Board.rb
@@ -29,11 +29,11 @@ def initialize

    def show_board
        puts "   1   2   3"
        puts "a  #{@cases[0]} | #{@cases[1]} | #{@cases[2]}"
        puts "a  #{@hash_cases["a1"]} | #{@hash_cases["a2"]} | #{@hash_cases["a3"]}"
        puts "  ---+---+---"
        puts "b  #{@cases[3]} | #{@cases[4]} | #{@cases[5]}"
        puts "b  #{@hash_cases["b1"]} | #{@hash_cases["b2"]} | #{@hash_cases["b3"]}"
        puts "  ---+---+---"
        puts "c  #{@cases[6]} | #{@cases[7]} | #{@cases[8]}"
        puts "c  #{@hash_cases["c1"]} | #{@hash_cases["c2"]} | #{@hash_cases["c3"]}"
    end

    def player_choise(player)
@@ -45,11 +45,11 @@ def player_choise(player)
        end 
    end

    def who_wins?
        ["a1", "b2", "c3"]
        ["1", "b2", "c3"]
        if  
    end
    # def who_wins?
    #     ["a1", "b2", "c3"]
    #     ["1", "b2", "c3"]
    #     if  
    # end
end

#binding.pry