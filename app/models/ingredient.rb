class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  def self.search(search)
    ingredients = Ingredient.where("name ilike :search", search: "%#{search}%")
  end
end
