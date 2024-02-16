
class FoodsFacade

  def foods(query)
    service = FoodsService.new
    json = service.get_foods_search(query)
    total_items = json[:totalHits]

    foods_data = json[:foods].first(10)
    
    foods = foods_data.map { |food_data| Food.new(food_data) }
    { total_items: total_items, foods: foods }
    
  end
  

end