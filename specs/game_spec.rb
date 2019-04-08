require 'minitest/autorun'
require_relative '../models/game.rb'

class TestCalculator < Minitest::Test

  def test_draw()
    game1 = Game.new("rock", "rock")
    assert_equal("It's a draw!", game1.determine_winner)
  end

  def test_player1_winner()
    game1 = Game.new("rock", "scissors")
    game2 = Game.new("paper", "rock")
    game3 = Game.new("scissors", "paper")
    assert_equal("Player 1 wins!", game1.determine_winner)
    assert_equal("Player 1 wins!", game2.determine_winner)
    assert_equal("Player 1 wins!", game3.determine_winner)
  end

  def test_player2_winner()
    game1 = Game.new("rock", "paper")
    game2 = Game.new("paper", "scissors")
    game3 = Game.new("scissors", "rock")
    assert_equal("Player 2 wins!", game1.determine_winner)
    assert_equal("Player 2 wins!", game2.determine_winner)
    assert_equal("Player 2 wins!", game3.determine_winner)
  end

end
