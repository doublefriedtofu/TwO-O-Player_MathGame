require './player'
require './question'

class Game
  attr_accessor :currentPlayer, :playerOne, :playerTwo, :gameStatus

  def initialize
    @playerOne = Player.new('Player 1', 3)
    @playerTwo = Player.new('Player 2', 3)

    @currentPlayer = playerOne
    @gameStatus = 1
  end
  
  def startGame
    # p1Lives = @playerOne.lives
    # p2Lives = @playerTwo.lives

    while @gameStatus > 0 
      
      ## new question
      q = Question.new()
      
      ## game question
      puts "#{@currentPlayer.name}: What does #{q.rand1} plus #{q.rand2} equal?"
      
      #recieves input
      input = gets.chomp.to_i
      
      evaluateResponse(input, q.answer)
      
    end
  end
  
## HELPER FUNCTIONS
  def evaluateResponse(res, answer)
    ## input boolean
    if res == answer
      puts ":) :) :) :) :) CORRECT :) :) :) :) :)"
    else 
      puts ":( :( :( :( :( WRONG :( :( :( :( :("
      @currentPlayer.reduceLife
    end
    
    puts "P1: #{@playerOne.lives}/3 vs P2: #{@playerTwo.lives}/3"
    
    checkLivePlayer()
  end
  
  def checkLivePlayer
    if @currentPlayer.lives == 0
      switchPlayer()
      puts "#{@currentPlayer.name} wins with a score of #{@currentPlayer.lives}/3 \n-------------- GAME OVER -------------- \nGood bye!"
      @gameStatus = 0
    else 
      switchPlayer()
      puts "-------------- NEW TURN --------------"
    end 
  end

  def switchPlayer 
    if @currentPlayer == playerOne
      @currentPlayer = playerTwo
    else 
      @currentPlayer = playerOne
    end 
  end

end

  