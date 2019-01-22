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

User.create(name: "Diane Korongy", bio: "20 something from NJ/NYC. Passionate about tech, art, and traveling", email: "diane@gmail.com", password_digest: "test")

User.create (name: "The Rock", password: "rock", password_confirmation: "rock", email: "dwayne@therock.com")
User.create!(name: "Zeshawn", password: "zee", password_confirmation: "zee", email: "zee@zee.com")

User.create(name:"Justin Woolverton", bio: "CEO of America's Fasting Growing Icecream", email: "justin@gmail.com", password_digest: "justin")



User.create(name: "Mr. Feeny", bio: "Old ass teacher from Boy Meets World", email: "feeny@gmail.com", password_digest: "feeny")
# Businesses

# t.string :name
# t.text :description
# t.float :goal
# t.string :location
# t.string :image_url
#
# t.integer :user_id
# t.integer :category_id

Business.create(name: "Halo Top Icecream", description: "Creamy & delicious, just like ice cream should be! Halo Top is packed with protein & just 280-360 calories per pint. Grab a pint of Halo Top ice cream today.", goal: 25000.00, location: "Los Angeles, CA", image_url: "https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-usa.com/article/2018/04/18/what-s-the-real-reason-behind-halo-top-s-success-mintel-explains/8107548-1-eng-GB/What-s-the-real-reason-behind-Halo-Top-s-success-Mintel-explains_wrbm_large.jpg", category_id: 7, user_id: 4)


Business.create(name: "Ridrr", description: "Mobile car service. Think Uber and Lyft but on steriods. We beat the competition with lower prices right at your fingertips.", goal: 1500000.00, location: "New York, NY", image_url: "https://media.licdn.com/dms/image/C4E0BAQG-gSU9sM1aLQ/company-logo_200_200/0?e=2159024400&v=beta&t=DIYhfxZYGXZ1qOrqkt7yiwHxwJNKDdEoQWEZvgU9f9E", category_id: 5, user_id: 1)

Business.create(name: "Birchbox", description: "Birchbox is a New York City-based online monthly subscription service that sends its subscribers a box of four to five selected samples of makeup, or other beauty related products. The products include skincare items, perfumes, organic based products, and various other cosmetics.", goal: 250000.00, location: "New York, NY", image_url: "https://www.birchbox.com/images/uploads/W_Jun_Testing-Testing-Birchbox-Select-Beta_Hero_2X.jpg", category_id: 9, user_id: 5)


#
# Halo Top Creamery.
# Coinbase.
# Noodle.ai.
# Bird.
# Reviews
# t.integer :rating
# t.text :comment
#
# t.integer :user_id
# t.integer :business_id

Review.create(rating: 5, comment: "Nice idea! Can't wait for it to come out. Keep it up!", user_id: 2, business_id: 1)


Review.create(rating: 5, comment: "Nice idea! Can't wait for it to come out. Keep it up!", user_id: 2, business_id: 1)


Review.create(rating: 5, comment: "The best icecream ever! Millenials will love this guilt-free sh*t!", user_id: 5, business_id: 4)
# Categories
# t.string :name
Category.create(name: "Technology/Software")
Category.create(name: "E-commerce")

Category.create(name: "Arts & Crafts")
Category.create(name: "Science")
Category.create(name: "Food")
Category.create(name: "Home Goods")
Category.create(name: "Pets")
Category.create(name: "Games")
Category.create(name: "Healthcare")
Category.create(name: "Music")
Category.create(name: "Services")
Category.create(name: "Education")
Category.create(name: "Other")
#Donations
# t.float :amount
# t.string :business_id
# t.string :user_id

Donation.create(amount: 1000, business_id: 1, user_id: 2)
