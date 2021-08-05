# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gym.destroy_all
puts "Database deleted"

10.times do 
    Gym.create!([{
      equipment: "Weights",
      location: "Hoxton",
      type_of_gym: "Lifting",
      name: "Lifting gym for the Bros",
      user_id: 2
},
{
      equipment: "Running",
      location: "London Bridge",
      type_of_gym: "Cardio",
      name: "Running away from your troubles",
      user_id: 1
}])
end
puts "Created #{Gym.count} gyms"
