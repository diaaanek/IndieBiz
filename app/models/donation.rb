class Donation < ApplicationRecord
  
  #Associations
  belongs_to :user
  belongs_to :business


  # Validations

end
