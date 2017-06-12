require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require('json')
require_relative('models/rps_game')

get '/' do
  erb(:home)
end

get '/rps_game/:player1/:player2' do
  game = Rps_game.new(params["player1"], params["player2"])
  @game = game.play
  erb(:result)
end