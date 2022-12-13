require './game'
require './player'
require './question'

game = Game.new()
game.startGame()


# 1. Game Runs
# 2. All players starts with 3 lives.
# 3. ??? Asks the question to player 1 ???
# 4. !!! input from player 1 !!!
# 5. prompt depends on the answer(right answer in this case). Nothing happnes.
# 6. Prints lives of both players
# 7. Prints -- NEW TURN --
# 8. ??? Asks the question to player 2 ???
# 9. !!! input from player2 !!!
# 10. prompt depends on the answer(Wrong answer in this case). -1 life for current Player.
# 11. one of the player reaches 0 lives. game ends
# 12. prints -- GAME OVER --
# 13. prints GOOD BYE