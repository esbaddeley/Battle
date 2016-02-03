require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = params['Player 1']
    player2 = params['Player 2']
    $game = Game.new(Player.new(player1),Player.new(player2))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @player_waiting = @game.player_waiting
    @game.attack
    erb :attack
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
