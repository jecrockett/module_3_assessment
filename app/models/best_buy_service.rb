class BestBuyService
  attr_reader :conn

  def initialize(search_params)
    search_string = URI.encode(search_params)

    @conn = Faraday.new(url: "https://api.bestbuy.com/v1/products(longDescription=#{search_string}*)") do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end
  end

  def search
    response = conn.get do |req|
      req.params['apiKey'] = ENV['BEST_BUY_KEY']
      req.params['format'] = "json"
      req.params['pageSize'] = '15'
      req.params['show'] = "sku,name,customerReviewAverage,shortDescription,salePrice,image"
    end
    JSON.parse(response.body)
  end

end
