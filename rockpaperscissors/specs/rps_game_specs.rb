require('minitest/autorun')
require_relative('../models/rps_game')

class TestRps_game < MiniTest::Test

  def test_p1_win_paper_rock
    game = Rps_game.new("paper", "rock")
    assert_equal("Player 1 wins with paper", game.play)
  end

  def test_p1_win_scissors_paper
    game = Rps_game.new("scissors", "paper")
    assert_equal("Player 1 wins with scissors", game.play)
  end

  def test_p1_win_rock_scissors
    game = Rps_game.new("rock", "scissors")
    assert_equal("Player 1 wins with rock", game.play)
  end

  def test_p2_win_rock_paper
    game = Rps_game.new("rock", "paper")
    assert_equal("Player 2 wins with paper", game.play)
  end

  def test_p2_win_scissors_rock
    game = Rps_game.new("scissors", "rock")
    assert_equal("Player 2 wins with rock", game.play)
  end

  def test_p2_win_paper_scissors
    game = Rps_game.new("paper", "scissors")
    assert_equal("Player 2 wins with scissors", game.play)
  end

  def test_incorrect_input
    game = Rps_game.new("what", "ever")
    assert_equal("rock paper scissors please!", game.play)
  end

end