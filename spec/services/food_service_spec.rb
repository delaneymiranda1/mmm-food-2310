require 'rails_helper'

describe FoodsService do
  context "class methods" do
    context "#get_foods_search" do
      it "returns food data" do
        query = "sweet potatoes" 
        search = FoodsService.new.get_foods_search(query)

        expect(search).to be_a(Hash)

        food_data = search[:foods].first
        expect(food_data).to have_key :fdcId
        expect(food_data[:fdcId]).to be_a(Integer)
        expect(food_data).to have_key :description
        expect(food_data[:description]).to be_a(String)
        expect(food_data).to have_key :gtinUpc
        expect(food_data[:gtinUpc]).to be_a(String)
        expect(food_data).to have_key :brandOwner
        expect(food_data[:brandOwner]).to be_a(String)
        expect(food_data).to have_key :ingredients
        expect(food_data[:ingredients]).to be_a(String)
      end
    end
  end
end