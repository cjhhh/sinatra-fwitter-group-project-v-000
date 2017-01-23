class TweetController < ApplicationController

  get '/tweets/new' do
   erb :'/tweets/create_tweet'
  end

  get '/tweets' do
    if logged_in?
      erb :'/tweets/tweets'
    else
      redirect '/login'
    end
  end

  get '/tweets/:id' do
    erb :'/tweets/show_tweet'
  end

end
