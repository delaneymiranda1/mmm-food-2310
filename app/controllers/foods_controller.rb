class FoodsController < ApplicationController

  def show
    query = params[:q]
    @data = FoodsFacade.new(query)
    @foods = @data.food_search
  end
end