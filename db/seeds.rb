# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create( first_name: "Béné", last_name: "Madeleine", email: "labene@tropcher.com", password: "123456")
User.create( first_name: "Paul", last_name: "Dupont", email: "paulotropbo@gmail.com", password: "azerty")
Van.create( model: "Volkswagen", capacity: 4, description: "lorem ipsum", price: 100)
Van.create( model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
Booking.create( starts_at: 8.days.ago, ends_at: 3.days.ago, price_total: 540, status: "accepté")
Booking.create( starts_at: 10.days.ago, ends_at: 6.days.ago, price_total: 480, status: "refusé")
