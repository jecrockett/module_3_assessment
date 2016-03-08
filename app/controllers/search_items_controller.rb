class SearchItemsController < ApplicationController

  def index
    best_buy = BestBuyService.new
    binding.pry
    search_terms =
    best_buy.search(search_terms)
  end

end
