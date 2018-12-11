require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative 'models/game'
also_reload './models/*'



get '/:hand1/:hand2' do
  return "#{Game.check_win(params[:hand1], params[:hand2])}"
end
