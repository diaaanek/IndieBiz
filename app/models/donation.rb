class Donation < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :business



  def donation_total
     self.donations.sum(:amount)
   end

  # Validations

end
