class Review < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :business


  # Validations
  validates :rating, presence: true
  validates :comment, presence: true
end
