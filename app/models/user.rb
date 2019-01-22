class User < ApplicationRecord
has_many :businesses
has_many :comments
has_many :reviews

has_secure_password
#validates username, email, password
# uniqueness


end
