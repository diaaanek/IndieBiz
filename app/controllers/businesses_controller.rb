class BusinessesController < ApplicationController

  # before_action :require_login, :current_user, :set_business
  # skip_before_action :require_login, :only => [:index, :show]
  # skip_before_action :set_business, :only => [:index, :new, :create]
  #

  def index
    @businesses = Business.all
  end

  	def new
  		@business = Business.new
      @categories = Category.all
      @users = User.all
  	end

  	def create
      # @business.user = current_user
      @categories = Category.all
        @users = User.all

      # @business.user = @user

  @business = Business.new(business_params)
  		if @business.valid?
          @business.save
      session[:business_id] = @business.id
  					redirect_to @business
  		else
  			render :new
  		end
  	end

    def show
      @business = Business.find(params[:id])
      @donation = Donation.new
    end


  	def edit
        @categories = Category.all
        @users = User.all
        @business = Business.find(params[:id])

        # render :layout => "application"
  		# @categories = Category.all.map{ |c| [c.name, c.id] }
      # @business = Business.find(params[:id])
   # if @project.user != current_user
   #   flash[:alert] = 'You can only edit projects that you created.'
   #   redirect_to(@project)
   # end
  	end

  	def update
      @categories = Category.all
        @users = User.all

      @business = Business.find(params[:id])
  		@business.category_id = params[:category_id]
  		if @business.update(business_params)
  			redirect_to business_path(@business)
  		else
  			render 'edit'
  		end
  	end

  	def destroy
      @business = Business.find(params[:id])
  		@business.destroy
  		redirect_to root_path
  	end

  	private

    #
    # t.string "name"
    # t.text "description"
    # t.float "goal"
    # t.string "location"
    # t.string "image_url"
    # t.integer "user_id"
    # t.integer "category_id"
  		def business_params
  			params.require(:business).permit(:name, :description, :location, :goal, :user_id, :category_id)
  		end

  end #end BusinessesController
