require 'sinatra'
require 'pry'

get '/' do
  "Hello World"
end

get '/secret' do
  "Different Message!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end

post '/named-cat' do
  p params # prints to server log
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
