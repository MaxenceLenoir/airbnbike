# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Booking.destroy_all
BikeOffer.destroy_all
User.destroy_all

thomas = User.new(pseudo: "thomas", email: "thomas@lewagon.org" , password: "azerty")
thomas.save

maxence = User.new(pseudo: "maxence", email: "maxence@lewagon.org" , password: "azerty")
maxence.save

marie = User.new(pseudo: "marie", email: "marie@lewagon.org" , password: "azerty")
marie.save

mickael = User.new(pseudo: "mickael", email: "mickael@lewagon.org" , password: "azerty")
mickael.save


bike1 = BikeOffer.new(title: "Le super vélo de Thomas", price_per_day: 100, genre: "Tandem Bikes", size: "L")
bike1.user = thomas
bike1.save

bike2 = BikeOffer.new(title: "Le super vélo de Maxence", price_per_day: 110, genre: "Road Bike", size: "M")
bike2.user = maxence
bike2.save

bike3 = BikeOffer.new(title: "Le super vélo de Mickael", price_per_day: 115, genre: "Mountain Bike", size: "L")
bike3.user = mickael
bike3.save

bike4 = BikeOffer.new(title: "Le super vélo de Marie", price_per_day: 13, genre: "Electric Bike", size: "L")
bike4.user = marie
bike4.save

bike5 = BikeOffer.new(title: "Le 2ème vélo de Thomas", price_per_day: 90, genre: "City Bike", size: "L")
bike5.user = thomas
bike5.save

bike6 = BikeOffer.new(title: "Le 2ème vélo de Maxence", price_per_day: 14, genre: "Tandem Bikes", size: "L")
bike6.user = maxence
bike6.save

