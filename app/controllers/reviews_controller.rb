class ReviewsController < ApplicationController

  before_action :find_business
	before_action :find_review, only: [:edit, :update, :destroy]

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.business_id = @business.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to business_path(@business)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @review.update(review_params)
			redirect_to business_path(@business)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to business_path(@business)
	end

	private

		def review_params
			params.require(:review).permit(:rating, :comment)
		end

		def find_business
			@business = Business.find(params[:business_id])
		end

		def find_review
			@review = Review.find(params[:id])
		end

end
