require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params['Player 1'])
    $player_2 = Player.new(params['Player 2'])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    @game = $game
    @game.attack(@player_2)
    erb :attack
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
