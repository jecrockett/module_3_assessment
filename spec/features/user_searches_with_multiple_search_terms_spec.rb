require 'rails_helper'

RSpec.describe "User searches with multiple search terms", type: :feature do
  scenario "User 3 matching items with sku, name, cust averge review, short description, sale price, image" do
    visit root_path

    fill_in "search", with: "sennheiser headphones white"
    click_on "Search"

    expect(current_path).to eq search_path
    within '.search-results' do
      expect(page).to have_selector('.item', count: 3)
    end
  end
end
