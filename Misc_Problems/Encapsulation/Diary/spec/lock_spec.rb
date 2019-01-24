require 'lock'

describe Lock do

  describe '#lock' do

    it 'should lock when :lock is called' do
      subject.lock
      expect(subject.locked).to eq true
    end
  end

  describe '#unlock' do
    it 'should unlock when :unlock is called' do
      subject.unlock
      expect(subject.locked).to eq false
    end
  end

end
