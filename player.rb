# Player Class - creates a player
class Player
  attr_accessor :name, :lives, :playerInput

  def initialize name, lives, playerInput
    @name = name
    @lives = lives
    @playerInput = playerInput
  end
  
end