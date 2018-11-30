# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

result = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

result['drinks'].each do |elm|
  Ingredient.create!(name: elm['strIngredient1'])
    p elm['strIngredient1']
end

Cocktail.create!(name: 'Bloody Mary')
Cocktail.create!(name: 'B 52's)
Cocktail.create!(name: 'Cuba libre')
Dose.create!(description: '3cl', cocktail_id: 1, ingredient_id: 1)
Dose.create!(description: '5cl', cocktail_id: 1, ingredient_id: 3)
Dose.create!(description: '8cl', cocktail_id: 1, ingredient_id: 5)
Dose.create!(description: '1 dose', cocktail_id: 2, ingredient_id: 6)
Dose.create!(description: '7cl', cocktail_id: 2, ingredient_id: 8)
Dose.create!(description: '10cl', cocktail_id: 2, ingredient_id: 10)