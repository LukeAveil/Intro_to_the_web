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
  erb(:index) 
end

set :session_secret, 'super secret'
