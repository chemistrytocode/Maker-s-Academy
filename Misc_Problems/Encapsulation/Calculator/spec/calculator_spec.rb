require 'calculator'

describe Calculator do

  describe '#add' do

    it 'returns 10 when :add(5, 5) when is called' do
      expect(subject.add(5, 5)).to eq 10
    end

  end

  describe '#subtract' do

    it 'returns 0 when :subtract(5, 5) is called' do
      expect(subject.subtract(5, 5)).to eq 0
    end

  end

end
