class DonationsController < ApplicationController

  def index
  end


  def new
    @donation = Donation.new
    @users = User.all
    @businesses = Business.all
  end

def create
    # @business = Business.find(params[:id])
  @donation = Donation.create(donation_params)
  if @donation.valid?
  # @donation.user = current_user
  # @donation.business = @business
  # if @business.save!

    redirect_to business_path(@donation.business_id)
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
