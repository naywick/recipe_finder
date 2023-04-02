class IngredientsController < ApplicationController
  def index()
    @ingredients = Ingredient.search(params[:search])
    ingredient_ids = @ingredients.map { |i| i.id }
    recipe_ingredients = RecipeIngredient.where(ingredient_id: ingredient_ids)
    recipe_ids = recipe_ingredients.map { |ri| ri.recipe_id }
    @recipes = Recipe.find(recipe_ids)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
