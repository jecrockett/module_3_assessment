class SearchItemsController < ApplicationController

  def index
    best_buy = BestBuyService.new(params[:search]) if params[:search]
    response = best_buy.search if best_buy
    @items = response["products"] if response
  end

end
