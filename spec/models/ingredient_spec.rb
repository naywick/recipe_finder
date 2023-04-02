require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  describe "#search" do
    let!(:potato) {Ingredient.create(
      name: "potato"
    )}
    let!(:flour) {Ingredient.create(
      name: "flour"
    )}
    let!(:self_raising_flour) {Ingredient.create(
      name: "self-raising flour"
    )}
    it "gets an ingredient by name if it exists" do
      expect(Ingredient.search("flour").count).to eq(2)
    end
  end
end
