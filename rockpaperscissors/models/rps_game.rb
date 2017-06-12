class Rps_game

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def play
    return "Draw!" if @p1 == @p2

    if @p1 == "rock"
      return "Player 1 wins with rock" if @p2 == "scissors"
      return "Player 2 wins with paper" if @p2 == "paper"
    elsif @p1 == "paper"
      return "Player 1 wins with paper" if @p2 == "rock"
      return "Player 2 wins with scissors" if @p2 == "scissors"
    elsif @p1 == "scissors"
      return "Player 1 wins with scissors" if @p2 == "paper"
      return "Player 2 wins with rock" if @p2 == "rock"
    else
      return "rock paper scissors please!"
    end
  end

end