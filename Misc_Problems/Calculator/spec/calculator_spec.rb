require 'calculator'

describe 'calculator' do

  before (:each) do
    @calculator = Calculator.new
  end

    it "Calculator responds to sum" do
      expect(@calculator).to respond_to(:multiply).with(2).arguments
    end

    it "Calculator resonds to square" do
      expect(@calculator).to respond_to(:square).with(1).arguments
    end

    it "Sum method returns a value" do
      expect(@calculator.multiply(2, 3)).to eq ("the answer is 6")
    end

    it "Square method returns a value" do
      expect(@calculator.square(3)).to eq ("the answer is 9")
    end

    it "Calculator responds to return_answer" do
      expect(@calculator).to respond_to(:return_answer)
    end
end
