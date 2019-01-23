class SessionsController < ApplicationController
  #
  #
  def new
  end
  #


    def create
      # byebug
      session[:email] = params [:session][:email]
        @user = User.find_by(email: params[:session][:email])
        if @user && @user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to @user
          # redirect_to root_url, notice: "Logged in!"
              # login
            else
            redirect_to new_user_path
            end
          end
  #
  #
  #
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
    # session.clear
    # redirect_to root_path
  end
  #
  private
   def login
     session[:user_id] = @user.id
     redirect_to @user
   end

end
