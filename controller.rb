require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('models/game.rb')

get "/game/:player1/:player2" do
  game = Game.new(params['player1'], params['player2'])
  return game.determine_winner
end
