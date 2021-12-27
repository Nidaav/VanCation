# Tjr detruire a l'envers des créations de seed, pour les dépendance
Booking.destroy_all
Van.destroy_all
User.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.new( first_name: "Béné", last_name: "Madeleine", email: "labene@tropcher.com", password: "123456")
file = File.open("#{Rails.root}/db/fixtures/images/user1.jpeg")
user1.photo.attach(io: file, filename: "user1.png", content_type: 'image/png')
user1.save!

user2 = User.new( first_name: "Paul", last_name: "Dupont", email: "paulotropbo@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user2.jpeg")
user2.photo.attach(io: file, filename: "user2.png", content_type: 'image/png')
user2.save!

user3 = User.new( first_name: "Patrick", last_name: "Chirac", email: "patrickchirac@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user3.jpeg")
user3.photo.attach(io: file, filename: "user3.png", content_type: 'image/png')
user3.save!

user4 = User.new( first_name: "François", last_name: "Pignon", email: "francoispignon@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user4.jpeg")
user4.photo.attach(io: file, filename: "user4.png", content_type: 'image/png')
user4.save!

user5 = User.new( first_name: "Pierre", last_name: "Brochant", email: "pierrebrochant@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user5.jpeg")
user5.photo.attach(io: file, filename: "user5.png", content_type: 'image/png')
user5.save!

user6 = User.new( first_name: "Lionnel", last_name: "Messi", email: "lionnelmessi@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user6.jpeg")
user6.photo.attach(io: file, filename: "user6.png", content_type: 'image/png')
user6.save!

user7 = User.new( first_name: "Kylian", last_name: "Mbappe", email: "kylianmbappe@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user7.jpeg")
user7.photo.attach(io: file, filename: "user7.png", content_type: 'image/png')
user7.save!

user8 = User.new( first_name: "Neymar", last_name: "JR", email: "neymarjr@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user8.jpeg")
user8.photo.attach(io: file, filename: "user8.png", content_type: 'image/png')
user8.save!


user9 = User.new( first_name: "Maitre", last_name: "Gims", email: "maitregims@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user9.jpeg")
user9.photo.attach(io: file, filename: "user9.png", content_type: 'image/png')
user9.save!

user10 = User.new( first_name: "Jul", last_name: "Puenta", email: "julpuenta@gmail.com", password: "azerty")
file = File.open("#{Rails.root}/db/fixtures/images/user10.jpeg")
user10.photo.attach(io: file, filename: "user10.png", content_type: 'image/png')
user10.save!




puts "Van 1..."
van1 = Van.new( user_id: user2.id, model: "Volkswagen", capacity: 4, description: "Volskwagen T5 de Décembre 2013 en excellent état, intérieur comme extérieur.
Boîte de vitesse automatique DGS 7 vitesse, faible consommation sur autoroute (environ 7L/100km).
Dispose de tout le confort d'un van aménagé tout en restant en dessous des 2m donc possibilité de se garer et de se faufiler partout ! Moteur de 140 chevaux, pratique en montagne, avec un mode sport si nécessaire. L'aménagement a été fait sur mesure et avec goût dans un esprit chalet :
- Isolation thermique et phonique recouverte de lambris
- Banquette avec table amovible, convertible en grand lit 160x190
- Nombreux rangements dans les meubles mais également aux murs avec pose de filets
- Rideaux occultants hayon et vitre côté (un rideau séparant la cabine de l'arrière du véhicule sera posé fin juin)", price: 100, address: "Strasbourg")
file = File.open("#{Rails.root}/db/fixtures/images/van1.jpg")
van1.photos.attach(io: file, filename: "van1.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int1.jpeg")
van1.photos.attach(io: file, filename: "int1.png", content_type: 'image/png')
van1.save!

puts "Van 2..."
description = <<~TEXT
  Nous vous proposons de vous évadez à bord de notre Vito Marco Polo. Parfaitement adapté pour un weekend au soleil ou un road trip de plusieurs semaines.

  Son look discret et ces petites dimensions vous permettent de passer partout (accès sous toutes les barres de parking car hauteur - de 2 mètres) et les péages sont au même prix qu'une voiture.

  Avec son poste de conduite agréable (boite auto, direction assistée, climatisation, accoudoirs, siège multi-réglables) vous ne subissez pas les kilomètres.

  Idéal pour une personne seule, un couple, ou, comme nous, une famille de 4, il vous permet de vivre en autonomie pendant plusieurs jours grâce à sa batterie auxilliaire et sa reserve d'eau de 60 L.

  4 places assises et 4 couchages, il se transforme en salon ou en chambres en quelques manipulations simples que nous prendrons le temps de vous expliquer.

  Nous mettons à votre disposition tout le kit camping (auvent, table extérieure, chaises et tabourets, barbecue gaz, cabine de douche dépliable 2 seconde) et, en cas d'intempéries, vous bénéficiez de la kitchenette intérieure (avec frigo et gazinière) et espace salon.
TEXT

van2 = Van.new( user_id: user1.id, model: "Renault", capacity: 5, description: description, price: 90, address: "Nantes")
file = File.open("#{Rails.root}/db/fixtures/images/van2.jpg")
van2.photos.attach(io: file, filename: "van2.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int2.jpeg")
van2.photos.attach(io: file, filename: "int2.png", content_type: 'image/png')
van2.save!

puts "Van 3..."
van3 = Van.new( user_id: user3.id, model: "Mercedes", capacity: 3, description: "Notre petit cocon tout confort à la porte de Paris : il se prénomme Sulivan !

Sulivan est un Triostyle, LE combi 5 étoiles... il incarne l’essence du van aménagé complet et multifonction dans une finition de prestige. Que ce soit pour la route de tous les jours ou pour les campements en nature, il devient votre compagnon de route idéal pour 2 à 4/5 personnes. Son volume très compact passe partout et le confort intérieur est optimal avec 5 places carte grise et  4 couchages adultes spacieux (ou 2 adultes et 3 enfants).

Nous sommes également adhérents FRANCE PASSION ce qui permet de loger gratuitement chez des producteurs français dans toute la france.

A la remise des clés, prévoir environ 1h d’explications et pour faire l'état des lieux.

Bonne route !", price: 80, address: "Paris")
file = File.open("#{Rails.root}/db/fixtures/images/van3.jpg")
van3.photos.attach(io: file, filename: "van3.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int3.jpeg")
van3.photos.attach(io: file, filename: "int3.png", content_type: 'image/png')
van3.save!

puts "Van 4..."
description = <<~TEXT
  "Bonjour,
  Ce van vous permettra de partir directement en toute autonomie, il est équipé de 2 couchages doubles, de 2 feux de cuisson, d'un évier + réserve d'eau, d'un réfrigérateur, de la climatisation, d'une douchette à l'arrière, d'un chauffage stationnaire pour les nuits fraiches et de vaisselle et ustensiles pour la préparation de repas basiques…
  Un auvent situé au-dessus de la porte latérale coulissante vient agrandir l'espace de vie pour éventuellement abriter la table amovible et les chaises et tabourets pliants astucieusement intégrés dans l'habillage de la porte coulissante et du hayon arrière.
  Le véhicule est dans un état neuf et il se conduit comme une voiture, passe sous les portiques de 2,00 mètres (tarif voiture sur autoroute) et consomme en moyenne 8 l/100 kms...
  Le California Coast T6 ( boite automatique) est le campervan moderne de référence, issu du savoir-faire historique de Volkswagen qui inventa le voyage en van aménagé il y a plus de 60 ans.
  Conçu pour sillonner les contrées en toute autonomie et toute discrétion grâce à son petit gabarit, il vous offre la possibilité de voyager et passer la nuit où bon vous semble...
  La plupart des barrières de limitation de stationnement ou les petites routes sinueuses des petits villages de montagne ne sont pas un problème."
TEXT
van4 = Van.new( user_id: user4.id, model: "Volkswagen", capacity: 4, description: description, price: 110, address: "Rennes")
file = File.open("#{Rails.root}/db/fixtures/images/van4.jpg")
van4.photos.attach(io: file, filename: "van4.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int4.png")
van4.photos.attach(io: file, filename: "int4.png", content_type: 'image/png')
van4.save!

puts "Van 5..."
van5 = Van.new( user_id: user10.id, model: "Mercedes", capacity: 4, description: "Je me présente, Jules, amoureux des voyages et des grands espaces. Je suis quelqu'un de précautionneux et attentionné pour mon Jules Verne et j'espère qu'il vous conduira où bon vous semble avec un maximum de confort.

À vous la liberté ! Le Mercedes Jules Verne est tout ce dont vous pouvez rêver dans un van avec un maximum de confort, fonctionnalité, efficacité pour rendre votre voyage inoubliable. Il est le seul équipé de toilette, douche et eau chaude !

A bord, le salon s'articule autour d'une banquette en L, rarissime dans la catégorie des vans à toits relevables. La kitchenette haut-de-gamme offre un confort maximal avec une plaque de cuisson deux feux, un évier et un grand réfrigérateur de 51L. Vous pourrez vous reposer ou dormir sur le grand lit toit de 1,90 x 1,17 et le relever pour profiter ensuite de la partie habitation en étant debout ! Le van offre l'avantage de pouvoir passer sous les barres de parkings et de passer en catégorie 1 aux péages.

Ce n'est pas fini, il offre également tout le confort d'un camping car avec une douche intérieur et exterieur ainsi que des toilettes fixes au niveau de la partie arrière. Seuls les Jules Verne et Kepler offrent cette possibilité ! ", price: 170, address: "Chantepie")
file = File.open("#{Rails.root}/db/fixtures/images/van5.jpg")
van5.photos.attach(io: file, filename: "van5.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int5.jpeg")
van5.photos.attach(io: file, filename: "int5.png", content_type: 'image/png')
van5.save!

puts "Van 6..."
van6 = Van.new( user_id: user6.id, model: "Volskwagen T5", capacity: 5, description: "description", price: 150, address: "Nice")
file = File.open("#{Rails.root}/db/fixtures/images/van6.jpg")
van6.photos.attach(io: file, filename: "van6.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int6.jpeg")
van6.photos.attach(io: file, filename: "int6.png", content_type: 'image/png')
van6.save!

puts "Van 7..."
van7 = Van.new( user_id: user7.id, model: "Mercedes Benz", capacity: 5, description: "Aucun autre van n illustre aussi bien le concept de liberté.
Véhicule entièrement modulable en quelques minutes.
En famille , entre amis ou un petit weekend en amoureux, le Mercedes Benz Vclass n attend plus que vous.", price: 100, address: "Lyon")
file = File.open("#{Rails.root}/db/fixtures/images/van7.jpg")
van7.photos.attach(io: file, filename: "van7.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int7.jpeg")
van7.photos.attach(io: file, filename: "int7.png", content_type: 'image/png')
van7.save!

puts "Van 8..."
van8 = Van.new( user_id: user8.id, model: "Volskwagen VW", capacity: 5, description: "Véhicule disposant de 4 places assises, en parfait état mécanique, autoradio, direction assistée, faible consommation de gazoil. Révision Août 2021.  Van très bien équipé.", price: 170, address: "Lille")
file = File.open("#{Rails.root}/db/fixtures/images/van8.jpg")
van8.photos.attach(io: file, filename: "van8.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int8.jpeg")
van8.photos.attach(io: file, filename: "int8.png", content_type: 'image/png')
van8.save!

puts "Van 9..."
van9 = Van.new( user_id: user9.id, model: "Nissan NV350", capacity: 3, description: "Ce van a reçu un aménagement d'usine par la société Stylevan (acteur majeur de l'aménagement en France)
Si tu sélectionnes mon van, tu auras un van 4 places en version longue (5.2m donc de la place) ayant les équipements suivants: une cuisine (avec réfrigérateur, gazinière et évier), un toit relevable, des sièges avant pivotants, un store.", price: 70, address: "Bordeaux")
file = File.open("#{Rails.root}/db/fixtures/images/van9.jpg")
van9.photos.attach(io: file, filename: "van9.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int9.jpeg")
van9.photos.attach(io: file, filename: "int9.png", content_type: 'image/png')
van9.save!

puts "Van 10..."
van10 = Van.new( user_id: user5.id, model: "Morris J4", capacity: 4, description: "Nous louons notre Karl au week-end ou à la semaine au départ de Paris. Nous l'avons équipé et décoré nous-même. Ce van de 1985 roule à max 105km/h (en descente) avec une vitesse de croisière à 80km/h. Il est équipé d'un moteur 1.6 Diesel. Il est en très bon état et tout équipé.

Avec son 1m95 de hauteur, il vous permet un accès à tous les parkings et spots interdits aux camping-cars traditionnels. Vous trouverez une cuisinière gaz, un évier avec ses réserves d’eau (20L), une couette et oreillers pour 2 personnes, une douche solaire, 2 chaises et 2 tables (intérieur et extérieur) ainsi que de nombreux rangements pour vos affaires personnelles. ", price: 135, address: "Toulouse")
file = File.open("#{Rails.root}/db/fixtures/images/van10.jpg")
van10.photos.attach(io: file, filename: "van10.png", content_type: 'image/png')
file = File.open("#{Rails.root}/db/fixtures/images/int10.jpeg")
van10.photos.attach(io: file, filename: "int10.png", content_type: 'image/png')
van10.save!

booking1 = Booking.create!(user_id: user9.id, van_id: van4.id, starts_at: 8.days.ago, ends_at: 3.days.ago, price_total: 540, accepted: "accepted")
booking2 = Booking.create!(user_id: user8.id, van_id: van5.id, starts_at: 10.days.ago, ends_at: 6.days.ago, price_total: 480, accepted: "declined")
booking3 = Booking.create!(user_id: user7.id, van_id: van4.id, starts_at: 20.days.from_now, ends_at: 30.days.from_now, price_total: 1500, accepted: "pending")
booking4 = Booking.create!(user_id: user3.id, van_id: van5.id, starts_at: 10.days.from_now, ends_at: 15.days.from_now, price_total: 750, accepted: "pending")
booking5 = Booking.create!(user_id: user5.id, van_id: van4.id, starts_at: 15.days.from_now, ends_at: 22.days.from_now, price_total: 700, accepted: "pending")
booking6 = Booking.create!(user_id: user1.id, van_id: van5.id, starts_at: 45.days.from_now, ends_at: 55.days.from_now, price_total: 1700, accepted: "pending")

Review.create!(booking_id: booking1.id, rating: 5, comment: "Notre séjour était vraiment top!! Le van est parfait! Idéal pour 4 personnes. Je recommande fortement!")
Review.create!(booking_id: booking2.id, rating: 5, comment: "Ce van est juste exceptionnel!! ")
Review.create!(booking_id: booking3.id, rating: 4, comment: "Très bon rapport qualité-prix")
Review.create!(booking_id: booking4.id, rating: 4, comment: "Van au top! Il est cependant un peu petit pour un road trip à 4 personnes!")
Review.create!(booking_id: booking5.id, rating: 5, comment: "Un van flambant neuf, Monsieur Pignon aime son van et cela se ressent!! Allez y les yeux fermés!! ")
Review.create!(booking_id: booking6.id, rating: 3, comment: "Van très fonctionnel!! Le prix est peut être un peu élevé!")
