
require 'sinatra/base'
require 'sinatra'
require 'capybara/dsl'
require 'selenium-webdriver'

class Battle < Sinatra::Base

  enable :sessions

  get '/play' do
    @attack = false
    @first_user_points = 100
    @second_user_points = 100
    @first_user = session[:first_user]
    @second_user = session[:second_user]
    erb(:play)
  end

  post '/names' do
    session[:first_user] = params[:first_user]
    session[:second_user] = params[:second_user]
    redirect '/play'
  end

  get '/' do
    erb(:main)
  end

  get '/attack' do
    @attack = true
    erb(:play)
  end



  run! if app_file == $0
  set :session_secret, 'super secret'
end