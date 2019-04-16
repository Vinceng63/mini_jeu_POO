require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

# Accueil
puts "-------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

# initialisation du joueur
puts "Quel est ton prénom ?"
HumanPlayerBis = gets.chomp
puts "#{HumanPlayerBis}"

# înitialisation des ennemis
enemies = []
player1 = Player.new("Josiane")
player2 = Player.new("José")
user = HumanPlayerBis

# le combat
while user.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
    
end
# partie finie

#message de fin
if HumanPlayerBis.life_points > 0
    puts "La partie est finie"
    puts "BRAVO ! TU AS GAGNE !"
else
    puts "Loser ! Tu as perdu !"