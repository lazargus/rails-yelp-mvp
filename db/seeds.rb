# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
lotus = { name: 'lotus', address: 'avenue du roule', category: 'chinese' }
livio = { name: 'livio', address: 'pont de neuilly', category: 'italian' }
ichiban = { name: 'ichiban', address: 'rue des dames', category: 'japanese' }
daroco = { name: 'daroco', address: 'maison de la radio', category: 'italian' }
riboute = { name: 'riboute', address: 'rue des batignolles', category: 'french' }

[lotus, livio, ichiban, daroco, riboute ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
