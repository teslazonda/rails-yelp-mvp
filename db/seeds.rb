# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
CATEGORIES =  ['chinese', 'italian', 'japanese', 'french', 'belgian' ].freeze

puts "Creating restaurants..."

20.times do
  restaurant = Restaurant.create!({ name: Faker::Restaurant.name, address: Faker::Address.full_address, category: CATEGORIES.sample })
  puts "Created #{restaurant.name}"
end
puts "Finished!"
