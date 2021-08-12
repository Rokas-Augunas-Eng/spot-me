# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
puts "Booking database deleted"

User.destroy_all
puts "User database deleted"

Gym.destroy_all
puts "Gym database deleted"

# 10.times do
  User.create!([
    email: Faker::Internet.email,
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  ])

  User.create!([
    email: "rokas@rokas.com",
    password: "123456",
    first_name: "Rokas",
    last_name: "Augunas"
  ])

Gym.create!([{
  equipment: "free weights",
  location: "334 Walworth Rd, London",
  type_of_gym: "Lifting",
  name: "Lifting gym for the Bros",
  user_id: 1,
  cost: 8
},
{
  equipment: "treadmill, yoga mats",
  location: "208-210 Old Kent Rd, London",
  type_of_gym: "Running",
  name: "Running away from your troubles",
  user_id: 1,
  cost: 12
},
{
  equipment: "kettles, medicine balls, bands",
  location: "1 Pocock St, London",
  type_of_gym: "Crossfit",
  name: "Crossfit paradise",
  user_id: 1,
  cost: 13
},
{
  equipment: "bench, squat rack",
  location: "66 Gedling Pl, London",
  type_of_gym: "Lifting",
  name: "Metal house gym",
  user_id: 1,
  cost: 9
},
{
  equipment: "tyres, hammers, yoke rack",
  location: "38 New Kent Rd, Elephant and Castle, London",
  type_of_gym: "Strongman",
  name: "The home gym for the big people",
  user_id: 1,
  cost: 7
},
{
  equipment: "yoga mats",
  location: "8 Farrell Court, Elephant Rd, London",
  type_of_gym: "Yoga",
  name: "The house of peace",
  user_id: 1,
  cost: 8
},
{
  equipment: "squat rack, leg press",
  location: "13-16, Empire Square West, Long Ln, London",
  type_of_gym: "Lifting",
  name: "We only do legs",
  user_id: 1,
  cost: 15
},
{
  equipment: "empty garage",
  location: "135 Borough High St, London",
  type_of_gym: "Gym",
  name: "An empty garage, exercise how you want!",
  user_id: 1,
  cost: 5
},
{
  equipment: "dumbells ",
  location: "130-138 Newington Butts, London",
  type_of_gym: "Lifting",
  name: "A gym which has dumbells running all the way to 50kg",
  user_id: 1,
  cost: 3
},
{
  equipment: "traedmil, stationary bike",
  location: "2b More London Riverside, London",
  type_of_gym: "Cardio",
  name: "Our lovely home gym has three stationary bikes and two treadmils",
  user_id: 1,
  cost: 13
}])

puts "Created #{User.count} users"
puts "Created #{Gym.count} gyms"