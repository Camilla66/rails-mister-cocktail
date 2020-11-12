# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

mojito = Cocktail.create(name: 'Mojito')
lemonade = Cocktail.create(name: 'Lemonade')
old_fashioned = Cocktail.create(name: 'Old Fashioned')

mint = Ingredient.create(name: "mint leaves")
lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")

leaves = Dose.create(description: '6 leaves', cocktail_id: mojito.id, ingredient_id: mint.id)
slices = Dose.create(description: '4 slices', cocktail_id: lemonade.id, ingredient_id: lemon.id)
cubes = Dose.create(description: '3 cubes', cocktail_id: old_fashioned.id, ingredient_id: ice.id)
