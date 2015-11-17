require 'sinatra'
require './lib/tennis.rb'


get '/' do
	erb :index
end

get '/game' do
	@@score = Tennis.new
	erb :game
end

post '/p1scores' do
	@@score.p1scores
	erb :game
end

post '/p2scores' do
	@@score.p2scores
	erb :game
end

post '/reset' do
	@@score.reset
	erb :game
end