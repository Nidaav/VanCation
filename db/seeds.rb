Booking.destroy_all
Van.destroy_all
User.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Tjr detruire a l'envers des créations de seed, pour les dépendance
Booking.destroy_all
Van.destroy_all
User.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new( first_name: "Béné", last_name: "Madeleine", email: "labene@tropcher.com", password: "123456")
user2 = User.new( first_name: "Paul", last_name: "Dupont", email: "paulotropbo@gmail.com", password: "azerty")
user1.save!
user2.save!



van1 =Van.new( user: user2, model: "Volkswagen", capacity: 4, description: "lorem ipsum", price: 100)
file = File.open("#{Rails.root}/db/fixtures/images/van1.jpg")
van1.photos.attach(io: file, filename: "van1.png", content_type: 'image/png')

van2 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file2 = File.open("#{Rails.root}/db/fixtures/images/van2.jpg")
van2.photos.attach(io: file2, filename: "van2.png", content_type: 'image/png')

van3 = Van.new( user: user1, model: "Mercedes", capacity: 5, description: "lorem ipsum", price: 80)
file3 = File.open("#{Rails.root}/db/fixtures/images/van3.jpg")
van3.photos.attach(io: file3, filename: "van3.png", content_type: 'image/png')

van4 = Van.new( user: user2, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file4 = File.open("#{Rails.root}/db/fixtures/images/van4.jpg")
van4.photos.attach(io: file4, filename: "van4.png", content_type: 'image/png')

van5 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file5 = File.open("#{Rails.root}/db/fixtures/images/van5.jpg")
van5.photos.attach(io: file5, filename: "van5.png", content_type: 'image/png')

van6 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file6 = File.open("#{Rails.root}/db/fixtures/images/van6.jpg")
van6.photos.attach(io: file6, filename: "van6.png", content_type: 'image/png')

van7 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file7 = File.open("#{Rails.root}/db/fixtures/images/van7.jpg")
van7.photos.attach(io: file7, filename: "van7.png", content_type: 'image/png')

van8 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file8 = File.open("#{Rails.root}/db/fixtures/images/van8.jpg")
van8.photos.attach(io: file8, filename: "van8.png", content_type: 'image/png')

van9 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file9 = File.open("#{Rails.root}/db/fixtures/images/van9.jpg")
van9.photos.attach(io: file9, filename: "van9.png", content_type: 'image/png')

van10 = Van.new( user: user1, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file10 = File.open("#{Rails.root}/db/fixtures/images/van10.jpg")
van10.photos.attach(io: file10, filename: "van10.png", content_type: 'image/png')

van1.save!
van2.save!
van3.save!
van4.save!
van5.save!
van6.save!
van7.save!
van8.save!
van9.save!
van10.save!





Booking.create!( user: user1, van: van1, starts_at: 8.days.ago, ends_at: 3.days.ago, price_total: 540, status: "accepté")
Booking.create!( user: user2, van: van2, starts_at: 10.days.ago, ends_at: 6.days.ago, price_total: 480, status: "refusé")
