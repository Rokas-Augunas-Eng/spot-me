# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Gym.destroy_all
puts "Gym database deleted"

User.destroy_all
puts "User database deleted"

user = User.create!([
    email: Faker::Internet.email,
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  ])

gym_1 = Gym.new(
  equipment: "free weights",
  location: "334 Walworth Rd, London",
  type_of_gym: "Weights",
  name: "Lifting gym for the Bros",
  user: User.first,
  cost: 10
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_1.jpg')
gym_1.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_1.save!
puts 'Created new gym'

gym_2 = Gym.new(
  equipment: "treadmill, yoga mats",
  location: "208-210 Old Kent Rd, London",
  type_of_gym: "Cardio",
  name: "Running from trouble",
  user: User.first,
  cost: 24
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_2.jpg')
gym_2.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_2.save!
puts 'Created new gym'

gym_3 = Gym.new(
  equipment: "kettles, medicine balls, bands",
  location: "1 Pocock St, London",
  type_of_gym: "Weights",
  name: "Crossfit paradise",
  user: User.first,
  cost: 13
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_3.jpg')
gym_3.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_3.save!
puts 'Created new gym'


gym_4 = Gym.new(
  equipment: "bench, squat rack",
  location: "66 Gedling Pl, London",
  type_of_gym: "Weights",
  name: "Metal house gym",
  user: User.first,
  cost: 9
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_4.jpg')
gym_4.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_4.save!
puts 'Created new gym'

gym_5 = Gym.new(
  equipment: "tyres, hammers, yoke rack",
  location: "38 New Kent Rd, Elephant and Castle, London",
  type_of_gym: "Yoga Studio",
  name: "The home gym for the big people",
  user: User.first,
  cost: 16
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_5.jpg')
gym_5.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_5.save!
puts 'Created new gym'

gym_6 = Gym.new(
  equipment: "yoga mats",
  location: "8 Farrell Court, Elephant Rd, London",
  type_of_gym: "Yoga Studio",
  name: "The house of peace",
  user: User.first,
  cost: 19
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_6.jpg')
gym_6.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_6.save!
puts 'Created new gym'

gym_7 = Gym.new(
  equipment: "squat rack, leg press",
  location: "13-16, Empire Square West, Long Ln, London",
  type_of_gym: "Weights",
  name: "We only do legs",
  user: User.first,
  cost: 15
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_7.jpg')
gym_7.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_7.save!
puts 'Created new gym'

gym_8 = Gym.new(
  equipment: "empty garage",
  location: "135 Borough High St, London",
  type_of_gym: "Cardio",
  name: "An empty garage, exercise how you want!",
  user: User.first,
  cost: 13
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_8.jpg')
gym_8.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_8.save!
puts 'Created new gym'

gym_9 = Gym.new(
  equipment: "dumbells ",
  location: "130-138 Newington Butts, London",
  type_of_gym: "Weights",
  name: "A gym which has dumbells running all the way to 50kg",
  user: User.first,
  cost: 31
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_9.jpg')
gym_9.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_9.save!
puts 'Created new gym'

gym_10 = Gym.new(
  equipment: "traedmil, stationary bike",
  location: "2b More London Riverside, London",
  type_of_gym: "Cardio",
  name: "Our lovely home gym has three stationary bikes and two treadmils",
  user: User.first,
  cost: 13
)
require "open-uri"
file = URI.open('https://res.cloudinary.com/dblr5mh56/image/upload/v1628787403/gym_10.jpg')
gym_10.photos.attach(io: file, filename: 'gym.png', content_type: 'image/jpg')
gym_10.save!
puts 'Created new gym'

puts "Created #{User.count} users"
puts "Created #{Gym.count} gyms"
