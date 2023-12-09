class ApplicationController < ActionController::Base
    helper_method :current_user

    private
  
    def current_user
        #    @current_user ||= User.find(session[:user_id]) if session[:user_id]
        @current_user ||= User.find_by(id: 1)
    end
end
