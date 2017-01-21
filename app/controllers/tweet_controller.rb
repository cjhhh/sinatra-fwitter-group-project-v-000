class TweetController < ApplicationController

  get '/tweets/new' do 
   erb :'/tweets/create_tweet'
  end

  get '/tweets' do
    if !User.is_logged_in?(session)
      redirect '/signup'
    else 
     erb :'/tweets/show_tweet'
    end
  end
  
end