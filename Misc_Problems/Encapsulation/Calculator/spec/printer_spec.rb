describe Printer do

  describe '#print' do

    it 'prints the correct message when :print("Hello") is called' do
      expect(subject.print("Hello")).to eq "The Answer is: Hello"
    end

  end
end
