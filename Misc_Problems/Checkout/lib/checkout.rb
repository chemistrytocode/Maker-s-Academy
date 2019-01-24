require_relative 'item'
require 'money'

class Checkout
  attr_reader :items

  def initialize
    @items = []
  end

  def scan(item)
    @items << item
  end

  def total
    price_array = []
    @items.each { |item| price_array << item.price }
    price_array.sum.round(2)
  end

  def display_total
    Money.new(total, "GBP")
  end

end
