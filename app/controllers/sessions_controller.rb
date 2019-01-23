class SessionsController < ApplicationController
  #
  #
  def new
  end
  #

  def create
      @user = User.find_by_email(name: params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in!"
            login
          else
          flash.now[:alert] = "Email or password is invalid"
          render "new"
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
