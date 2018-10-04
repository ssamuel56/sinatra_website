require "sinatra"
require "slim"
require "sass"
require 'sinatra/reloader' if development?

get('/style.css'){ scss :style }

get '/' do
  @title = "Samuel's Sinatra site"
  slim :home
end

get '/about' do
  @title = "All about this website"
  slim :about
end

get '/contact' do
  slim :contact , :layout => :special
end

not_found do
  slim :not_found
end
