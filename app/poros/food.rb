

class Food
  attr_accessor :fdc_id, :description, :gtin_upc, :brand_owner, :ingredients

  def initialize(attributes)
    @fdc_id = attributes[:fdcId]
    @description = attributes[:description]
    @gtin_upc = attributes[:gtinUpc]
    @brand_owner = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
