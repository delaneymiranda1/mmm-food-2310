

class Food
  attr_accessor :description, :gtin_upc, :brand_owner, :ingredients

  def initialize(attributes)
    @description = attributes[:description]
    @gtin_upc = attributes[:gtinUpc]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
