module Helpers
 module ClassMethods

  def current_user(sessions)
    @real_user = User.find_by(sessions[:user_id])
  end

  def logged_in?(sessions)
    !!sessions[:user_id]
  end

 end
end
