class UsersController < ApplicationController

  def index

  end


  def new
    @user = User.new
  end

# create session
def create
  @user = User.new(user_params)
  if @user.valid?
    @user.save
    session[:id] = @user.id
    session[:name] = @user.name
    redirect_to user_path(@user)
  else
    render 'new'
  end
end


def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

#show session
def show
    @user = User.find(params[:id])
    @user_projects = Project.where('user_id = ?', @user.id)
  end

  # def businesses
  #     @businesses = Business.where(user:session[:id])
  #   end




private
  def user_params
    params.require(:user).permit(:name, :bio, :email, :password, :password_confirmation)
  end

end #end UsersController
