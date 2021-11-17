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

puts "Van 1..."
van1 = Van.new( user_id: user2.id, model: "Volkswagen", capacity: 4, description: "lorem ipsum", price: 100)
file = File.open("#{Rails.root}/db/fixtures/images/van1.jpg")
van1.photos.attach(io: file, filename: "van1.png", content_type: 'image/png')
van1.save!

puts "Van 2..."
van2 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van2.jpg")
van2.photos.attach(io: file, filename: "van2.png", content_type: 'image/png')
van2.save!

puts "Van 3..."
van3 = Van.new( user_id: user1.id, model: "Mercedes", capacity: 5, description: "lorem ipsum", price: 80)
file = File.open("#{Rails.root}/db/fixtures/images/van3.jpg")
van3.photos.attach(io: file, filename: "van3.png", content_type: 'image/png')
van3.save!

puts "Van 4..."
van4 = Van.new( user_id: user2.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van4.jpg")
van4.photos.attach(io: file, filename: "van4.png", content_type: 'image/png')
van4.save!

puts "Van 5..."
van5 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van5.jpg")
van5.photos.attach(io: file, filename: "van5.png", content_type: 'image/png')
van5.save!

puts "Van 6..."
van6 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van6.jpg")
van6.photos.attach(io: file, filename: "van6.png", content_type: 'image/png')
van6.save!

puts "Van 7..."
van7 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van7.jpg")
van7.photos.attach(io: file, filename: "van7.png", content_type: 'image/png')
van7.save!

puts "Van 8..."
van8 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van8.jpg")
van8.photos.attach(io: file, filename: "van8.png", content_type: 'image/png')
van8.save!

puts "Van 9..."
van9 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van9.jpg")
van9.photos.attach(io: file, filename: "van9.png", content_type: 'image/png')
van9.save!

puts "Van 10..."
van10 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: "lorem ipsum", price: 90)
file = File.open("#{Rails.root}/db/fixtures/images/van10.jpg")
van10.photos.attach(io: file, filename: "van10.png", content_type: 'image/png')
van10.save!

Booking.create!( user_id: user1.id, van_id: van1.id, starts_at: 8.days.ago, ends_at: 3.days.ago, price_total: 540, status: "accepted")
Booking.create!( user_id: user2.id, van_id: van2.id, starts_at: 10.days.ago, ends_at: 6.days.ago, price_total: 480, status: "declined")
