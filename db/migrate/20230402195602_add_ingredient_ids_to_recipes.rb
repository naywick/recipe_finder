class AddIngredientIdsToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :ingredients, :integer, array: true, default: []
  end
end
