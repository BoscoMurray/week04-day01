require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('json')

get '/rps_game/:player1/:player2' do
  p1 = params["player1"]
  p2 = params["player2"]
  p1win = "Player 1 wins"
  p2win = "Player 2 wins"

  return "Draw!" if p1 == p2

  if p1 == "rock"
    return "#{p1win} with rock" if p2 == "scissors"
    return "#{p2win} with paper" if p2 == "paper"
  elsif p1 == "paper"
    return "#{p1win} with paper" if p2 == "rock"
    return "#{p2win} with scissors" if p2 == "scissors"
  elsif p1 == "scissors"
    return "#{p1win} with scissors" if p2 == "paper"
    return "#{p2win} with rock" if p2 == "rock"
  else
    return "rock paper scissors please!"
  end

end