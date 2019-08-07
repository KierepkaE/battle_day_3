
require 'sinatra/base'
require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions



  get '/play' do
    @attack = false
    @first_user_name = $first_user.name
    @second_user_name = $second_user.name
    @second_user_hp = $second_user.HP
    @first_user_hp = $first_user.HP
    @attack = params[:attack]
    erb(:play)
  end

  post '/names' do
    $first_user = Player.new(params[:first_user])
    $second_user = Player.new(params[:second_user])
    redirect '/play'
  end

  get '/' do
    erb(:main)
  end

  post '/attack' do
    if params[:first_user_attack]
    $first_user.game.attack($second_user)
    else
      $second_user.game.attack($first_user)
    end

    redirect '/play?attack=true'
  end


  run! if app_file == $0
  set :session_secret, 'super secret'
end