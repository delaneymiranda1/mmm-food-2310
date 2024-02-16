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
    fill_in 'q', with: 'sweet potatoes'
    click_on 'Search'


    expect(page).to have_content("Total number of items returned by the search:")
    
    expect(page).to have_selector("ul li", count: 10) 
    within("ul") do
      all("li").each do |li|
        expect(li).to have_content("GTIN/UPC code:")
        expect(li).to have_content("Description:")
        expect(li).to have_content("Brand Owner: Kar Nut Products Company")
        expect(li).to have_content("Ingredients:")
      end
    end
    # save_and_open_page
  end
end