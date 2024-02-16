class FoodsController < ApplicationController

  def index
    query = params[:search]
    data = FoodsFacade.new.foods(query)
    @foods = data[:foods]
  end

  def search
    query = params[:search]
    data = FoodsFacade.search_foods(query)

    @total_items = data[:total_items]
    @foods = data[:foods]
    
  rescue RestClient::ExceptionWithResponse => e
    @error_message = e.response.body
  end

end