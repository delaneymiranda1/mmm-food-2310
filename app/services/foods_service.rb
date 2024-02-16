class FoodsService

  def conn
    conn = Faraday.new(url: "https://api.nal.usda.gov/") do |faraday|
      faraday.params["api_key"] = Rails.application.credentials.fdc[:key]
    end
  end

  def get_url(path)
    response = conn.get(path)
    JSON.parse(response.body, symbolize_names: true)
  end

  def get_foods_search(query)
    foods = get_url("fdc/v1/foods/search?query=#{query}")
  end
end