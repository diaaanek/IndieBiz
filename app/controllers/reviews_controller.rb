class ReviewsController < ApplicationController

  # before_action :find_business
	# before_action :find_review, only: [:edit, :update, :destroy]

	def new
		@review = Review.new
		@businesses = Business.all
		# @business = Business.find(params[:business_id])
		@users = User.all
  #   # find_business
  # if Business.exists?(params[:business_id])
  #     @business = Business.find_by(id: params[:business_id])
  #     @review = @business.reviews.build(user_id: current_user.id)
  #   else
  #     redirect_to new_review_path
  #   end
  end

	def create
		# byebug
		#    @user = User.find_by(id: session[:user_id])
		@review = Review.create(review_params)
		# @review.business_id = @business.id
		# @review.user_id = current_user.id
		# byebug
		if @review.valid?
			redirect_to root_path

			# FIX PATH !!!

		else
			redirect_to new_review_path
		end
	end

	def edit

	end

	def update
		if @review.update(review_params)
			redirect_to business_path(@business)
		else
			redirect_to edit_business_path
		end
	end

	# def destroy
	# 	@review.destroy
	# 	redirect_to business_path(@business)
	# end

	private

		def review_params
			params.require(:review).permit(:rating, :comment, :user_id, :business_id)
		end

		# def find_business
		# 	@business = Business.find(params[:business_id])
		# end

		def find_review
			@review = Review.find(params[:id])
		end

end
