# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Destroying all cocktails, ingredients and doses..."

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


puts "Creating all cocktails"

puts "Mojito in process"
file = URI.open('https://res.cloudinary.com/dmwnfqoel/image/upload/v1607723018/best-mojito-recipe-2_atpz4r_u0zgnt.jpg')
mojito = Cocktail.new(name: 'Mojito')
mojito.photo.attach(io: file, filename: 'mojito.jpg')
mojito.save!
puts "Mojito created"

puts "Creating Mojito's ingredients"
mint = Ingredient.create(name: "Mint leaves")
lemon = Ingredient.create(name: "Lemon")
ice = Ingredient.create(name: "Ice cubes")
soda = Ingredient.create(name: "Club soda")
rum = Ingredient.create(name: "White rum")

puts "Creating Mojito's doses"
mint = Dose.create(description: '(6 leaves)', cocktail_id: mojito.id, ingredient_id: mint.id)
lemon = Dose.create(description: '(4 slices)', cocktail_id: mojito.id, ingredient_id: lemon.id)
ice = Dose.create(description: '(3 cubes)', cocktail_id: mojito.id, ingredient_id: ice.id)
soda = Dose.create(description: "(1/2 cup)", cocktail_id: mojito.id, ingredient_id: soda.id)
rum = Dose.create(description: "(1 ½ fluid ounces)", cocktail_id: mojito.id, ingredient_id: rum.id)

puts "Cosmopolitan in process"
file = URI.open('https://res.cloudinary.com/dmwnfqoel/image/upload/v1607801914/cosmopolitan_drink_ypieli_nazui0.jpg')
cosmopolitan = Cocktail.new(name: 'Cosmopolitan')
cosmopolitan.photo.attach(io: file, filename: 'cosmopolitan.jpg')
cosmopolitan.save!
puts "Cosmopolitan created"

puts "Creating Cosmopolitan's ingredients"
vodka = Ingredient.create(name: "Vodka")
lime_juice = Ingredient.create(name: "Lime juice")
triple_sec = Ingredient.create(name: "Triple sec")
cranberry_juice = Ingredient.create(name: "Cranberry juice")
ice = Ingredient.create(name: "Ice")

puts "Creating Cosmopolitan's doses"
vodka = Dose.create(description: '(1 ½ fluid ounces)', cocktail_id: cosmopolitan.id, ingredient_id: vodka.id)
lime_juice = Dose.create(description: '(1/4 fluid ounce)', cocktail_id: cosmopolitan.id, ingredient_id: lime_juice.id)
triple_sec = Dose.create(description: '(1/4 fluid ounce)', cocktail_id: cosmopolitan.id, ingredient_id: triple_sec.id)
cranberry_juice = Dose.create(description: "(¼ fluid ounce)", cocktail_id: cosmopolitan.id, ingredient_id: cranberry_juice.id)
ice = Dose.create(description: "(1 cube)", cocktail_id: cosmopolitan.id)

puts "Old fashioned in process"
file = URI.open('https://res.cloudinary.com/dmwnfqoel/image/upload/v1607723080/Delicious-Maple-Old-Fashioned-Cocktail-Vegan-Nutfreevegan-Bourbon-recipe-3_q5vmjy_lq68tn.jpg')
old_fashioned = Cocktail.new(name: 'Old Fashioned')
old_fashioned.photo.attach(io: file, filename: 'old-fashioned.jpg')
old_fashioned.save!
puts "Old fashioned created"

puts "Old fashioned's ingredients"
ice = Ingredient.create(name: "Ice")
whiskey = Ingredient.create(name: "Jigger bourbon whiskey")
orange = Ingredient.create(name: "Orange")
cherry = Ingredient.create(name: "Maraschino cherry")

puts "Creating Old fashioned's doses"
ice = Dose.create(description: '(2 cubes)', cocktail_id: old_fashioned.id, ingredient_id: ice.id)
whiskey = Dose.create(description: '(1.5 fluid ounce)', cocktail_id: old_fashioned.id, ingredient_id: whiskey.id)
orange = Dose.create(description: '(1 slice)', cocktail_id: old_fashioned.id, ingredient_id: orange.id)
cherry = Dose.create(description: "(1 cherry)", cocktail_id: old_fashioned.id, ingredient_id: cherry.id)



puts "Finished"
