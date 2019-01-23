class DonationsController < ApplicationController
  #
  # before_action do
  #     @business = Business.find(params[:business_id])
  # end

  def index
  end


  def new
    @donation = Donation.new
    @users = User.all
    @businesses = Business.all
  end

def create
  @donation = Donation.new(donation_params)
  @donation.user = current_user
  @donation.business = @business

  if @business.save!
    redirect_to @business
    flash[:notice] = "Pledge succesfully created."
  else
    flash[:error] = "Sorry, pledge not succesful."
    render :new
    # redirect_to user_business_path
  end

end


def show
  @donation = Donation.find(params[:id])
end
private

 def donation_params
   params.require(:donation).permit(:amount, :user_id, :business_id)
 end

end # end donations
