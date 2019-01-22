class BusinessesController < ApplicationController

  before_action :require_login, :current_user, :set_business
  skip_before_action :require_login, :only => [:index, :show]
  skip_before_action :set_business, :only => [:index, :new, :create]


  def index
  		if params[:category].blank?
  			@businesses = Business.all.order("created_at DESC")
  		else
  			@category_id = Category.find_by(name: params[:category]).id

  			@businesses = Business.where(:category_id => @category_id).order("created_at DESC")
  		end
  	end

  	def show
  		if @business.reviews.blank?
  			@average_review = 0
  		else
  			@average_review = @business.reviews.average(:rating).round(2)
  		end
  	end

  	def new
  		@business = current_user.businesses.build
  		@categories = Category.all.map{ |c| [c.name, c.id] }
  	end

  	def create
  		@business = current_user.businesses.build(business_params)
  		@business.category_id = params[:category_id]

  		if @business.save
  			redirect_to root_path
  		else
  			render 'new'
  		end
  	end

  	def edit
  		@categories = Category.all.map{ |c| [c.name, c.id] }
  	end

  	def update
  		@business.category_id = params[:category_id]
  		if @business.update(business_params)
  			redirect_to business_path(@business)
  		else
  			render 'edit'
  		end
  	end

  	def destroy
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
  			params.require(:business).permit(:name, :description, :goal, :location, :image_url, :user_id, :category_id, :img_url)
  		end

  		def find_business
  			@business = Business.find(params[:id])
  		end

  end #end BusinessesController
