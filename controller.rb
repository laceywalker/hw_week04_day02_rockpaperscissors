require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative 'models/game'
also_reload './models/*'


# FINISH MVP

get '/:hand1/:hand2' do
  return "#{Game.check_win(params[:hand1], params[:hand2])}"
end

#EXTENSION

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end

get '/:hand1/:hand2' do
  @winner = Game.check_win(params[:hand1], params[:hand2])
  erb(:result)
end
