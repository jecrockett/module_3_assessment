class SearchItemsController < ApplicationController

  def index
    best_buy = BestBuyService.new(params[:search])
    response = best_buy.search
    @items = response["products"]
  end

end

# https://api.bestbuy.com/v1/products(longDescription=sennheiser)?show=sku,name,customerReviewAverage,shortDescription,salePrice,image&pageSize=15&apiKey=qp5arx9ga4bna25z688na79h&format=json
