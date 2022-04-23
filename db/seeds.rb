# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
10.times do
  flat = Flat.create(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraphs.join,
    price_per_night: rand(75..125),
    number_of_guests: rand(1..4),
    picture_url: 'https://source.unsplash.com/random/?flat'
  )
  puts "Created #{flat.name}"
end

puts "Finished!"
