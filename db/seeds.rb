# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Starting seeds..."

puts "Destroy Restaurants"

Restaurant.destroy_all

puts "Restaurants destroyed !"

puts "Creating Restaurants..."
type = %w[chinese italian japanese french belgian]
10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name,
                              category: type.sample,
                              phone_number: Faker::PhoneNumber.cell_phone_in_e164,
                              address: Faker::Address.full_address)
  restaurant.save
end

puts "#{Restaurant.count} Restaurants created"
