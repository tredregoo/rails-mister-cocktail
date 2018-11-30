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
end



#url = "https://cdn.liquor.com/wp-content/uploads/2017/09/01105541/classic-bloody-mary-720x720-recipe.jpg"
#cocktail = Cocktail.new(name: 'BloodyM')
#cocktail.remote_photo_url = url
#cocktail.save
#Dose.create(description:'10cl', cocktail_id: cocktail.id, ingredient_id: 4)
#Dose.create(description:'5cl', cocktail_id: cocktail.id, ingredient_id: 8)
#Dose.create(description:'10cl', cocktail_id: cocktail.id, ingredient_id: 12)
