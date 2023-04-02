class IngredientsController < ApplicationController
  require 'json'
  def index()
    @ingredients = Ingredient.all()
  end

  def search()
    if params[:search].nil? == true
      nil
    else
      #Get the ingredients ids
      ingredients_ids = Ingredient.get_ids_by_names(params[:search])
      puts ingredients_ids.to_json

      #Get the recipe_ingredients where ingredient_id is in the id array
      recipe_ingredients = RecipeIngredient.where(ingredient_id: ingredients_ids)

      recipe_ids = recipe_ingredients.map { |ri| ri.recipe_id }
      @recipes = Recipe.find(recipe_ids)
    end
  end

  def show()
    @ingredient = Ingredient.find(params[:id])
  end
end
