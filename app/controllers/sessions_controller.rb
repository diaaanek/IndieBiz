class SessionsController < ApplicationController


  def new
  end

  def create
      @user = User.find_by(name: params[:name])
      if @user && @user.authenticate(params[:password])
        login
      else
        redirect_to '/login'
      end
    end
  end



  def destroy
    session.clear
    redirect_to root_path
  end

  private
   def login
     session[:user_id] = @user.id
     redirect_to user_path(@user)
   end
