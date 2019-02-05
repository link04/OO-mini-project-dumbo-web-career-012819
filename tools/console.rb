require_relative '../config/environment.rb'


user1 = User.new("Link")
user2 = User.new("Zelda")
user3 = User.new("Ganondorf")
user4 = User.new("Goddess Hylia")

recipe1 = Recipe.new("Watermelon Juice")
recipe2 = Recipe.new("Apple Juice")
recipe3 = Recipe.new("Watermelon Pie")
recipe4 = Recipe.new("Rice and Beans")

ingredient1 = Ingredient.new("Watermelon")
ingredient2 = Ingredient.new("Apple")
ingredient3 = Ingredient.new("Wheat")
ingredient4 = Ingredient.new("Rice")
ingredient5 = Ingredient.new("Sugar")

recipe_card1 = RecipeCard.new("02/12", 4, user1, recipe4)
recipe_card2 = RecipeCard.new("12/12", 2, user2, recipe3)
recipe_card3 = RecipeCard.new("04/09", 4, user3, recipe1)
recipe_card4 = RecipeCard.new("04/10", 8, user4, recipe2)
recipe_card5 = RecipeCard.new("09/09", 10, user1, recipe3)
recipe_card6 = RecipeCard.new("02/01", 5, user3, recipe3)

recipe_ingredient1 = RecipeIngredient.new(ingredient4, recipe4)
recipe_ingredient2 = RecipeIngredient.new(ingredient1, recipe3)
recipe_ingredient3 = RecipeIngredient.new(ingredient5, recipe1)
recipe_ingredient4 = RecipeIngredient.new(ingredient2, recipe2)

allergen1 = Allergen.new(ingredient4, user1)
allergen2 = Allergen.new(ingredient1, user3)
allergen3 = Allergen.new(ingredient4, user4)
allergen4 = Allergen.new(ingredient5, user4)
#
# mmgvs = [ingredient4,ingredient1]
# recipe3.add_ingredients(mmgvs)

#user1.add_recipe_card("03/01",10,recipe1 )

binding.pry
