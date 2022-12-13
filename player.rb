# Player Class - creates a player
class Player
  attr_accessor :name, :lives

  def initialize name, lives
    @name = name
    @lives = lives
  end
  
  # player lose one live if they lose. 
  def reduceLife
    @lives -= 1
  end
  
end