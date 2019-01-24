require 'item'

describe 'Item' do

  describe '#New' do
    it "Initializes a new Item Object with a price set to 5.00" do
      item = Item.new(5.00)
      expect(item.price).to eq 5.00
    end

  end

end
