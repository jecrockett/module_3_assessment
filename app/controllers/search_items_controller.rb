class SearchItemsController < ApplicationController

  def index
    best_buy = BestBuyService.new
    search_terms = "(search=#{params[:item]})"
    @items = best_buy.search(search_terms)
  end

end
