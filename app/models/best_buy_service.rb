class BestBuyService
  attr_reader :conn

  def initialize
    @conn = Faraday.new(url: "https://api.bestbuy.com/v1/products") do |faraday|
      faraday.request :url_encoded
      faraday.adapter Faraday.default_adapter
    end
  end

  def search(search_url)
    response = conn.get do |req|
      req.url "#{search_url}"

    end
  end

end
