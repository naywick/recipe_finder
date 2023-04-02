class Ingredient < ApplicationRecord
  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  
  def self.search(search)
    Ingredient.where("name ilike :search", search: "%#{search}%")
  end

  def self.get_ids_by_names(names)
    split_names = names.split(" ")
    ids = split_names.map do |n|
      search(n).map { |i| i.id}
    end
    ids.flatten
  end
end
