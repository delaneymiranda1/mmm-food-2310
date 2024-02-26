class FoodsService
  def conn
    Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.fdc[:key]
    end
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_foods_search(ingredient)
    get_url("/fdc/v1/foods/search?&query=#{ingredient}&pageSize=10")
  end
end