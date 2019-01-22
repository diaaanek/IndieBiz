# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users

# t.string :name
# t.text :bio
# t.string :email
# t.string :password_digest

User.create(name: "Diane Korongy", password: "test", password_confirmation: "test", email: "dkorongy@gmail.com")

User.create (name: "The Rock", password: "rock", password_confirmation: "rock", email: "dwayne@therock.com")
User.create!(name: "Zeshawn", password: "zee", password_confirmation: "zee", email: "zee@zee.com")

# Businesses

# t.string :name
# t.text :description
# t.float :goal
# t.string :location
# t.string :image_url
#
# t.integer :user_id
# t.integer :category_id

Business.create(name: "Katnip", description: "The newest and most organic cat food on the market", goal: 25000.00, location: "New York, NY", image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2018/06/i-take-photos-of-cats-high-on-catnip-fb20.png", category_id: 6)


Business.create(name: "Dice Tower", description: "We're asking for your help as we pursue our goal of covering the entire world of board games. We have a myriad of cool rewards, but we hope that your main goal in supporting this campaign is keeping The Dice Tower on the air. We are dedicated to keeping the show and our videos free for download and viewing, and appreciate those who join us in reaching that goal.", goal: 200000.00, location: "San Francisco, CA", image_url: "https://static.boredpanda.com/blog/wp-content/uploads/2018/06/i-take-photos-of-cats-high-on-catnip-fb20.png", category_id: 7)

Business.create(name: " ", description: " ", goal: 15000.00, location: "New York, NY", image_url: "  ", category_id: 1)

# Reviews
# t.integer :rating
# t.text :comment
#
# t.integer :user_id
# t.integer :business_id

Review.create(rating: 5, comment: "Nice idea! Keep it up!", user_id: 2, business_id: 1)

# Categories
# t.string :name
Category.create(name: "Technology/Software")
Category.create(name: "Arts & Crafts")
Category.create(name: "Science")
Category.create(name: "Food & Bev")
Category.create(name: "Home Goods")
Category.create(name: "Pets")
Category.create(name: "Games")

#Donations
# t.float :amount
# t.string :business_id
# t.string :user_id

Donation.create(amount: 1000, business_id: 1, user_id: 2)
