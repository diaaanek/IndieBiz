class Review < ApplicationRecord
  belongs_to :user
  belongs_to :business

  validates :rating, presence: true
  validates :description, presence: true
end
