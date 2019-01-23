class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
     # if session[:user_id]
        @current_user ||= User.find(session[:user_id])  if session[:user_id]
    # else
    #     @current_user = nil
      end
      # @current_user ||= User.find_by(id: session[:user_id])

    #
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

    # def set_business
    #   @business = Business.find_by(id: params[:id])
    # end
    #
    # def set_review
    #   @review = Review.find_by(id: params[:id])
    # end
    #
    # def set_donation
    #   @donation = Donation.find_by(id: params[:id])
    # end
end  #end Application controller
