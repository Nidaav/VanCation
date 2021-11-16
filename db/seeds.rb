# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Tjr detruire a l'envers des créations de seed, pour les dépendance
Booking.destroy_all
Van.destroy_all
User.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.new(first_name: "Béné", last_name: "Madeleine", email: "labene@tropcher.com", password: "123456")
user2 = User.new(first_name: "Paul", last_name: "Dupont", email: "paulotropbo@gmail.com", password: "azerty")
user1.save!
user2.save!
van1 = Van.new(user: user1, model: "Volkswagen", capacity: 4, description: "lorem ipsum", price: 100)
van2 = Van.new(user: user2, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
van1.save!
van2.save!
Booking.create!(user: user1, van: van1, starts_at: 8.days.ago, ends_at: 3.days.ago, price_total: 540, status: "accepté")
Booking.create!(user: user2, van: van2, starts_at: 10.days.ago, ends_at: 6.days.ago, price_total: 480, status: "refusé")
