require 'rails_helper'

RSpec.describe Food do
  it 'exists' do
    attr = {
      description: "SWEET POTATO",
      gtinUpc: "085239389508",
      brandOwner: "Target Stores",
      ingredients: "potato",
    }

    food = Food.new(attr)
    expect(food).to be_a(Food)
    expect(food.gtin_upc).to eq("085239389508")
    expect(food.description).to eq('SWEET POTATO')
    expect(food.ingredients).to eq('potato')
    expect(food.brand_owner).to eq('Target Stores')
  end
end