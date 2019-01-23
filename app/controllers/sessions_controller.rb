class SessionsController < ApplicationController
  #
  #
  def new
  end
  #
  def login
     login
  end

    def create
      # byebug
      # session[:email] = params [:session][:email]
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to user_path(@user)
          flash[:notice] = 'Logged in!'
          redirect_to root_path
              # login
            else
              flash[:error] = "bad, not authenticated"
            redirect_to login_path
            end
          end
  #
  #
  #
  def destroy
    # session[:user_id] = nil
    session.delete(:user_id)
      redirect_to root_path, :notice => "Logged out!"
    # redirect_to root_path
  end
  #
  private
   def login
     session[:user_id] = @user.id
     redirect_to @user
   end

end
