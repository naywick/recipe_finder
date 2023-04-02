require 'rails_helper'

RSpec.describe "Ingredients", type: :request do
  describe "GET /ingredients/search" do
  let!(:banana_bread) {Recipe.create(
    title: "Banana bread",
    cook_time: 10,
    prep_time: 20,
    ratings: 5.0,
    category: "Cakes",
    author: "cakefactory",
    ingredients: []
  )}

  let!(:potato_waffle) {Recipe.create(
    title: "Potato waffle",
    cook_time: 50,
    prep_time: 20,
    ratings: 4.7,
    category: "Savoury",
    author: "potatofarm",
    ingredients: []
  )}

  let!(:flour) {Ingredient.create(
    name: "flour"
  )}

  it "returns all recipes associated with an ingredient" do
    
    expect(subject.search_by_ingredient("flour")).to eq(flour)
  end
  end
end
