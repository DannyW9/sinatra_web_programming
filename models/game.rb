class Game

def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
end

def determine_winner
  if @player1 == @player2
    return "It's a draw!"
  elsif (@player1 == "rock" && @player2 == "scissors") ||
        (@player1 == "paper" && @player2 == "rock") ||
        (@player1 == "scissors" && @player2 == "paper")
    return "Player 1 wins!"
  else "Player 2 wins!"
  end
end




end
