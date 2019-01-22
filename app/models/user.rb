class User < ApplicationRecord

# Associations
has_many :businesses
has_many :donations
has_many :reviews


has_secure_password

# Validations
validates :name, :email, presence: true
validates :password, length: { minimum: 6, allow_blank: true }


end
