class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  def self.search(search)
    if search
      ingredients = Ingredient.where("name ilike :search", search: "%#{search}%")
    else
      @ingredients = Ingredient.all
    end
  end
end
