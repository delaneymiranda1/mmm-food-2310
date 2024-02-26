class FoodsFacade
  attr_reader :ingredient
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def food_search
    foods_data = FoodsService.new
    
    json = foods_data.get_foods_search(ingredient)
    json[:foods].map do |food_data| 
      Food.new(food_data)
    end
    
  end
end