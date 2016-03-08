require 'rails_helper'

RSpec.describe "User searches with a single search term", type: :feature do
  scenario "User sees 15 returned items with sku, name, cust averge review, short description, sale price, image" do
    visit root_path

    fill_in "Search", with: "sennheiser"
    click_on "Search"

    expect(page).to have_selector('item', count: 15)
    end
  end
end
