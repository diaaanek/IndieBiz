class SessionsController < ApplicationController
   # skip_before_action :login, only: [:create]
  #
  def new
    @user  = User.new
  end

  def login
     login
  end


# creating login session 
    def create
      # byebug
      # session[:email] = params [:session][:email]
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          # byebug
          redirect_to user_path(@user)
              # login
            else
              flash.now[:alert] = "Sign in again"
            redirect_to login_path
            end
          end
  #
  #
  #
    def destroy
      session[:user_id] = nil
      flash[:error] = "Logged out!"
        redirect_to root_path
    end

  private

    def login
      session[:user_id] = @user.id
      redirect_to @user
    end

   def user_params
     params.require(:user).permit(:name, :bio, :email, :password, :password_confirmation)
   end

end
