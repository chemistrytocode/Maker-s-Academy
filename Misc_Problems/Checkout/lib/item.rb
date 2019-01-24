require_relative 'checkout'

class Item
  attr_reader :price

  def initialize(price)
    @price = price.to_f
  end

end
