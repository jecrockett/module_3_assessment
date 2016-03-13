require 'rails_helper'

RSpec.describe "ajax product search", js: true do
  it "searches with a single search term" do
    visit search_path
    fill_in "search", with: "sennheiser"
    click_on "Search"

    expect(current_path).to eq search_path
    within '.search-results' do
      expect(page).to have_css('.item', count: 15)
    end
  end

  it "searches with multiple search terms" do
    visit search_path
    fill_in "search", with: "sennheiser headphones white"
    click_on "Search"

    expect(current_path).to eq search_path
    within '.search-results' do
      expect(page).to have_css('.item', count: 3)
    end
  end

end
