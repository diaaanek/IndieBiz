class Review < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :business


  # Validations
  validates :rating, presence: true
  validates :comment, presence: true

  def blank_stars
 5 - rating.to_i
end
end
