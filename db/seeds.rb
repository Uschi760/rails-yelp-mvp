# frozen_string_literal: true

# rubocop:enable
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database ...'
Restaurant.destroy_all

puts 'Creating restaurants ...'
fishing_friend = { name: 'Fishing Friend', address: 'Wildenbruchstraße 32, 12435 Berlin', phone_number: '0178/5363737', }
berlin_pizza = { name: 'Berlin Pizza', address: 'Elsenstraße 10, 13435 Berlin', category: 'italian', phone_number: '0176/5363737' }
steak_house = { name: 'Steak House', address: 'Kiefholzstraße 17, 10435 Berlin', category: 'french', phone_number: '0172/5363999'  }
moms_kitchen = { name: 'Moms Kitchen', address: 'Kiefholzstraße 33, 10435 Berlin', category: 'chinese', phone_number: '0165/536777'  }
a_kitchen =  { name: 'International Kitchen', address: 'Frankfurter Allee 132, 13785 Berlin', category: 'belgian', phone_number: '0165/536777' }

[fishing_friend, berlin_pizza, steak_house, moms_kitchen, a_kitchen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Done!'
