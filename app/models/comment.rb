class Comment < ApplicationRecord

belongs_to :business
belongs_to :user


# validates business and user id and content true 
end
