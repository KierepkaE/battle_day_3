
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
    @first_user_points = 100
    @second_user_points = 100
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

  get '/attack' do
    @attack = true
    # @first_user_name = $first_user.name
    # @second_user_name = $second_user.name
    erb(:play)
  end


  run! if app_file == $0
  set :session_secret, 'super secret'
end