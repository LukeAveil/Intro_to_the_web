require "sinatra"

get '/' do
  "hi!"
end

get '/secret' do
  "( . Y . )"
end

get '/supersecret' do
  "( . Y . )<br>( . Y . )"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) 
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

set :session_secret, 'super secret'
