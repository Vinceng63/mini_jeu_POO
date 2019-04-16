class Player #définition de la méthode classe avec attribut read et write  
  attr_accessor :name, :life_points
  

  def initialize(name) #la méthode initialise les variables d'instances nom et nombre de points de vie
    @name = name
    @life_points = 10
  end

  def show_state #la méthode montre l'état du joueur
    return "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(damaged_received) # la méthode défini le nombre de coups reçus
    @life_points -= damaged_received

        if @life_points <= 0
          puts "le joueur #{@name} a été tué !"
        end
  end

  def attacks(player) #la méthode d'attaque du joueur 1 sur le joueur 2
    puts "le joueur #{@name} attaque le joueur #{player.name}"
    damage = compute_damage
    puts "il lui inflige #{damage} points de dommages"
    player.gets_damage(damage)
  end

  def compute_damage # méthode roulette pour définir le nombre de dommages effectués à chaque lancé
    return rand(1..6)
  end

end


class HumanPlayer < Player
  attr_accessor :weapon_level

  def initialize(name)
    super(name)
    @life_points = 100
    @weapon_level = 1
  end
end