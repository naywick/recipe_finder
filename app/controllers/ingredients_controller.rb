class IngredientsController < ApplicationController
  def index()
    @ingredients = Ingredient.all()
  end

  def search()
    ingredients = Ingredient.search(params[:search])
    ingredient_ids = ingredients.map { |i| i.id }
    recipe_ingredients = RecipeIngredient.where(ingredient_id: ingredient_ids)
    recipe_ids = recipe_ingredients.map { |ri| ri.recipe_id }
    @recipes = Recipe.find(recipe_ids)
  end

  def show()
    @ingredient = Ingredient.find(params[:id])
  end
end
