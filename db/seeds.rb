# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
pastadelamama = { name: 'Pasta de la Mama', address: 'Marseille', phone_number: '0634567801', category: 'italian' }
sushichekebab = { name: 'Sushiche Kebab', address: 'Lyon', phone_number: '0634567802', category: 'japanese' }
baobob = { name: 'Bao Bob', address: 'Paris', phone_number: '0634567803', category: 'chinese' }
chezrobert = { name: 'Chez Robert', address: 'Londres', phone_number: '0634567804', category: 'french' }
fritteunefois = { name: 'Fritte Une Fois', address: 'Lille', phone_number: '0634567805', category: 'belgian' }

[pastadelamama, sushichekebab, baobob, chezrobert, fritteunefois].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
