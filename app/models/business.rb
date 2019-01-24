class Business < ApplicationRecord

  #Associations
  belongs_to :user
  belongs_to :category
  has_many :reviews
  has_many :donations



# Validations

validates :name, :description, :user_id, presence: true;
validates :name, uniqueness: true


    def blank_stars
      5 - rating.to_i
    end
    
end
