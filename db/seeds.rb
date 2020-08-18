# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



BikeOffer.destroy_all
User.destroy_all

thomas = User.new(pseudo: "thomas", email: "thomas@lewagon.org" , password: "azerty").save
maxence = User.new(pseudo: "maxence", email: "maxence@lewagon.org" , password: "azerty").save
marie = User.new(pseudo: "marie", email: "marie@lewagon.org" , password: "azerty").save
mickael = User.new(pseudo: "mickael", email: "mickael@lewagon.org" , password: "azerty").save


bike1 = BikeOffer.new(title: "Le super vélo de Thomas", price_per_day: 100, genre: "Tandem Bikes", size: "L")
bike1.save
bike1.user_id = thomas.id

bike2 = BikeOffer.new(title: "Le super vélo de Maxence", price_per_day: 110, genre: "Road Bike", size: "M")
bike1.save
bike1.user_id = thomas.id

bike3 = BikeOffer.new(title: "Le super vélo de Mickael", price_per_day: 115, genre: "Mountain Bike", size: "L")
bike1.save
bike1.user_id = thomas.id

bike4 = BikeOffer.new(title: "Le super vélo de Marie", price_per_day: 130, genre: "Electric Bike", size: "L")
bike1.save
bike1.user_id = thomas.id

bike5 = BikeOffer.new(title: "Le 2ème vélo de Thomas", price_per_day: 90, genre: "City Bike", size: "L")
bike1.save
bike1.user_id = thomas.id

bike6 = BikeOffer.new(title: "Le 2ème vélo de Maxence", price_per_day: 140, genre: "Tandem Bikes", size: "L")
bike1.save
bike1.user_id = maxence.id

