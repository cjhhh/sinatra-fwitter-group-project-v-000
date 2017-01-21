class UserController < ApplicationController

#change 
  get '/signup' do
    if !User.is_logged_in?(session)
     erb :'/users/create_user'
   else
     redirect '/tweets'
   end
  end

  get '/login' do
    erb :'/users/login'
  end

  get '/logout' do
    session.clear 
    redirect '/'
  end

  post '/signup' do 
    user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
   if !user && params[:username] = "" || params[:email] = "" || params[:password] = ""
     redirect '/signup'
   else
     user.save
     session[:user_id] = user.id
     redirect '/tweets'
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
