class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
        @current_user ||= User.find(session[:user_id])  if session[:user_id]
      end

    def logged_in?
       !!current_user
    end
    #
    def require_login
       redirect_to '/login' unless logged_in?
    end
    #
    def verify(instance)
      instance.user == current_user
    end
end  #end Application controller
