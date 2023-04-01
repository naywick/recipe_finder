# Setup
parsed_recipes = JSON.parse(File.read('app/assets/recipes.json'))
recipes = []
puts "Setup complete"

# Extracting recipe and ingredient data
parsed_recipes.each do |recipe|
  recipe_ingredients = []
  recipe["ingredients"].each do |ingredient|
    new_ingredient = Ingredient.where(name: ingredient).first_or_create()
    recipe_ingredients << new_ingredient
  end

  new_recipe = Recipe.new(
    title: recipe["title"],
    cook_time: recipe["cook_time"],
    prep_time: recipe["prep_time"],
    ratings: recipe["ratings"],
    cuisine: recipe["cuisine"],
    category: recipe["category"],
    author: recipe["author"],
    ingredients: recipe_ingredients
  )

  recipes << new_recipe
end
puts "Recipe data successfully extracted"

# Import recipes and ingredients to db
Recipe.import(recipes, recursive: true)
puts "All recipes imported to db"
