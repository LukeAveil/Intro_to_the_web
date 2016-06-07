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

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) 
end

set :session_secret, 'super secret'
