class SearchItemsController < ApplicationController

  def index
    binding.pry
    best_buy = BestBuyService.new
    search_terms = "(longDescription=#{params[:item]})"
    @items = best_buy.search(search_terms)
  end

end

https://api.bestbuy.com/v1/products(longDescription=sennheiser)?show=sku,name,customerReviewAverage,shortDescription,salePrice,image&pageSize=15&apiKey=qp5arx9ga4bna25z688na79h&format=json
