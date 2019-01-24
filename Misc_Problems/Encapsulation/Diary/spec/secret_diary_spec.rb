require 'secret_diary'
require 'lock'

describe SecretDiary do

  describe '#add_entry' do

    it 'should throw error when diary Lock is locked: and :add_entry is called' do
      expect { subject.add_entry }.to raise_error("Diary is locked: Cannot add entry")
    end

    it 'should respond to :get_entries when diary Lock is unlocked:' do
      allow(subject.diary_lock).to receive(:locked) { false }
      expect { subject.add_entry }.not_to raise_error
    end

  end

  describe '#get_entries' do

    it 'should throw error when diary Lock is locked: and :get_entries is called' do
      expect { subject.get_entries }.to raise_error("Diary is locked: Cannot get entries")
    end

    it 'should respond to :add_entry when diary Lock is unlocked:' do
      allow(subject.diary_lock).to receive(:locked) { false }
      expect { subject.get_entries }.not_to raise_error
    end
  end
end
