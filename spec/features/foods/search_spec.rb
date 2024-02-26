require "rails_helper"

RSpec.describe "Food search page", type: :feature do
  #   As a user,
  # When I visit "/"
  # And I fill in the search form with "sweet potatoes" (Note: Use the existing search form)
  # And I click "Search"
  # Then I should be on page "/foods"
  # And I should see a total number of items returned by the search. (Note: "sweet potatoes" should yield >30,000 results)
  # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
  # And for each of the foods I should see:
  # - The food's GTIN/UPC code
  # - The food's description
  # - The food's Brand Owner
  # - The food's ingredients

  it 'returns foods by search' do
    visit '/'
    fill_in 'q', with: 'sweet potato'
    click_button 'Search'

    expect(current_path).to eq(foods_path)
    expect(page).to have_content("Total number of items returned by the search: 10")
  
    within('ul') do
      expect(page).to have_content("GTIN/UPC code: 20042431")
      expect(page).to have_content("Description: SWEET POTATO")
      expect(page).to have_content("Brand Owner: FRESH & EASY")
      expect(page).to have_content("Ingredients: SWEET POTATO, CHIPOTLE CHICKEN {COOKED CHICKEN (CHICKEN BREAST WITH RIB MEAT, CHICKEN BROTH, CONTAINS LESS THAN 2% OF: MODIFIED POTATO STARCH, GARLIC POWDER, CANOLA OIL, SOYBEAN OIL, SALT, SODIUM PHOSPHATE, CHICKEN FAT, FLAVOR), CHIPOTLE MANGO SAUCE [MANGO CHIPOTLE MARINADE (MANGO PUREE, WATER, CHIPOTLE PEPPER, ONION, SALT, BROWN SUGAR, CANOLA OIL, VINEGAR, GARLIC, LEMON JUICE CONCENTRATE, TOMATO PASTE, SPICES, RICE WINE VINEGAR, SUGAR, CILANTRO, CITRIC ACID)], WATER, CILANTRO}, MANGO SALSA (MANGO, CUCUMBER, TOMATO, LIME JUICE, MANGO PUREE, ONION, CILANTRO, SERRANO PEPPERS, SALT).")
    end
  end
end