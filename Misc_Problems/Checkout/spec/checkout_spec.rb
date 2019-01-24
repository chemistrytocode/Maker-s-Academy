require 'checkout'

describe Checkout do

  before (:all) do
    @collection = Checkout.new
    @collection.scan(item1 = Item.new(5.00))
    @collection.scan(item2 = Item.new(10.00))
    @collection.scan(item3 = Item.new(7.00))
    @collection.scan(item4 = Item.new(9.99))
  end

  describe '#New' do
    it "Initializes a checkout class with an empty array" do
      expect(subject.items).to be_empty
    end
  end


  describe '#Scan' do
    it "Adds items to @items instance variable" do
      subject.scan(item = Item.new(5.00))
      expect(subject.items).to include item
    end
  end

  describe '#Total' do
    it "Expects all items in items array to equal 31.99" do
      expect(@collection.total).to eq 31.99
    end
  end

  describe '#Display_Total' do
    it "Expects to output the total in the format £31.99" do
      expect(@collection.display_total).to eq "£31.99"
    end
  end

end
