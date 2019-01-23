class UsersController < ApplicationController

  # def index
  #   @users = User.all
  # end


  def new
    @user = User.new
  end

# # create session
def create
  @user = User.new(user_params)
  #
  if  @user.save
    session[:id] = @user.id
  #   session[:name] = @user.name

  #CHNAGE REDIRECT
    redirect_to root_path
  else
    render 'new'
  end
end
#
#     if @user.save
#         redirect_to root_path, alert: "signed up"
#       else
#       flash.now[:alert] = 'failure'
#         render :new
#     end
# end

#
# def current_user
#   @current_user ||= User.find_by(id: session[:user_id])
# end
#
# #show session
def show
    if logged_in?
      @user = User.find_by(id: params[:id])
      redirect_to user_path(current_user) if @user != current_user
    else
      require_login
    end
  end

#
#   # def businesses
#   #     @businesses = Business.where(user:session[:id])
#   #   end
#
#
#
#
private
  def user_params
    params.require(:user).permit(:name, :bio, :email, :password, :password_confirmation)
  end

end #end UsersController
