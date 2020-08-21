# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all data"

Booking.destroy_all
BikeOffer.destroy_all
User.destroy_all

puts "Creating Users ..."

thomas = User.new(pseudo: "thomas", email: "thomas@lewagon.org" , password: "azerty")
thomas.save

maxence = User.new(pseudo: "maxence", email: "maxence@lewagon.org" , password: "azerty")
maxence.save

marie = User.new(pseudo: "marie", email: "marie@lewagon.org" , password: "azerty")
marie.save

mickael = User.new(pseudo: "mickael", email: "mickael@lewagon.org" , password: "azerty")
mickael.save

puts "Creating Bike Offers ..."

bike1 = BikeOffer.new(title: "Le super vélo de Thomas", price_cents: 10000, genre: "Tandem Bike", size: "L", address: "9 Rue Princesse, Lille")
bike1.user = thomas
bike1.save

bike2 = BikeOffer.new(title: "Le super vélo de Maxence", price_cents: 11000, genre: "Road Bike", size: "M", address: "14 rue Royale, Lille")
bike2.user = maxence
bike2.save

bike3 = BikeOffer.new(title: "Le super vélo de Mickael", price_cents: 11500, genre: "Mountain Bike", size: "L", address: "1 Rue Jean Walter, Lille")
bike3.user = mickael
bike3.save

bike4 = BikeOffer.new(title: "Le super vélo de Marie", price_cents: 1300, genre: "Electric Bike", size: "L", address: "12 boulevard Carnot, Lille")
bike4.user = marie
bike4.save

bike5 = BikeOffer.new(title: "Le 2ème vélo de Thomas", price_cents: 9000, genre: "City Bike", size: "L", address: "385 Rue Léon Gambetta, Lille")
bike5.user = thomas
bike5.save

bike6 = BikeOffer.new(title: "Le 2ème vélo de Maxence", price_cents: 1400, genre: "Tandem Bike", size: "L", address: "19 Rue de Bruxelles, Lille")
bike6.user = maxence
bike6.save

puts "Finished"
