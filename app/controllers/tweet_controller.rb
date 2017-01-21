class TweetController < ApplicationController

  get '/tweets/new' do 
   erb :'/tweets/create_tweet'
  end

  get '/tweets' do
    if User.logged_in?(session) == false
      redirect '/signup'
    else 
     erb :'/tweets/show_tweet'
    end
  end
  
end