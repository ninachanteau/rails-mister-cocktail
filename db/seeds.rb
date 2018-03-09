require 'open-uri'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts 'Creating cocktails...'

cocktail = Cocktail.new(name: "Bloody Mary")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/BloodyMary-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/BloodyMary-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Champagne")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/Champagne-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/Champagne-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Gin Tonic")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/GinTonic-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/GinTonic-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Margarita")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/Margarita-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/Margarita-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Mojito")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/Mojito-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/Mojito-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Old Fashioned")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/OldFashioned-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/OldFashioned-Show.jpeg")
cocktail.save

cocktail = Cocktail.new(name: "Piña Colada")
cocktail.remote_card_picture_url = File.join(Rails.root, "db/photos/PinaColada-Card.jpeg")
cocktail.remote_show_picture_url = File.join(Rails.root, "db/photos/PinaColada-Show.jpeg")
cocktail.save

puts 'Creating ingredients...'

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
response = open(url).read
json = JSON.parse(response)
json["drinks"].each do |result|
  ingredient_name = result["strIngredient1"]
  Ingredient.create(name: ingredient_name)
end

puts 'Finished!'

