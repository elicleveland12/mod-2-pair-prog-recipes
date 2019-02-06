# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
eli = User.create(name: "Eli")
chris = User.create(name: "Chris")
guy = User.create(name: "Guy Fieri")

5.times do
  Recipe.create(title: Faker::Food.dish, user_id: rand(1..3))
end

10.times do
  Ingredient.create(name: Faker::Food.ingredient, quantity: Faker::Food.measurement)
end

4.times do
  Allergenn.create(user_id: rand(1..3), ingredient_id: rand(1..10))
end

6.times do
  RecipeIngredient.create(recipe_id: rand(1..5), ingredient_id: rand(1..10))
end
