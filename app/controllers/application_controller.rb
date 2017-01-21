require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  helpers do
    def current_user(sessions)
      @real_user = User.find_by(sessions[:user_id])
    end

    def is_logged_in?(sessions)
      !!sessions[:user_id]
    end
  end

end
