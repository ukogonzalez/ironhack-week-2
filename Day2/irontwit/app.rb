require 'sinatra'
require 'haml'
require 'pry'
require "sinatra/reloader" if development?
require_relative 'lib/user.rb'
require_relative 'lib/twit.rb'

set :haml, format: :html5
enable(:sessions)

@@users ||= []
@@twits ||= []


get '/' do
  erb(:index)
end

post '/register' do
  @user = User.new(params[:username], params[:password])
  @@users << @user
  session[:logged_in] = true
  session[:username] = params[:username]
  redirect to('/profile')
end

post '/login' do
  @@users.finds (@user = params[:username] && @password = params[:password])
  session[:logged_in] = true
  session[:username] = params[:username]
  redirect to('/profile')
end

get '/profile' do
  if @@twits.any?
    @twits = @@twits.select { |twit| twit.user == session[:username] }
  end
  erb(:profile)
end

get "/logout" do
  session[:logged_in] = false
  redirect to("/")
end

post '/crear_twit' do
  @twit = Twit.new(session[:username], params[:message])
  @@twits << @twit
  redirect to('/profile')
end
