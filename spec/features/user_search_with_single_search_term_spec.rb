require 'rails_helper'

RSpec.describe "User searches with a single search term", type: :feature do
  scenario "User sees 15 returned items with sku, name, cust averge review, short description, sale price, image" do
    visit root_path

    fill_in "search", with: "sennheiser"
    click_on "Search"

    expect(current_path).to eq search_path
    within '.search-results' do
      expect(page).to have_css('.item', count: 15)
    end
  end
end
