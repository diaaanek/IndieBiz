class User < ApplicationRecord

# Associations
has_many :businesses
has_many :donations
has_many :reviews


has_secure_password

# Validations
# validates :name, :email, :password, presence: true
# # validates :password, length: { minimum: 6, allow_blank: true }
#
# validates :email, uniqueness:{case_sensitive: false}

end
