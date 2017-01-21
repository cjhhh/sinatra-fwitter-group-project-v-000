class UserController < ApplicationController

  get '/signup' do
   erb :'/users/create_user'
  end

  get '/login' do
    erb :'/users/login'
  end

  get '/logout' do
    session.clear 
    redirect '/'
  end

  post '/signup' do 
    user = User.new(:username => params[:username], :password => params[:password])
   if user.save && !params.empty?
     redirect '/tweets'
   else
     redirect '/signup'
   end
  end

  post '/login' do
    user = User.find_by(:username => params[:username])
   if user && user.authenticate(:password => params[:password])
     session[:user_id] = user.id
     redirect '/tweets/new'
   end
  end
  
  
end
