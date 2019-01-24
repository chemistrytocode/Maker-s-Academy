require 'exercise_1'

describe Note do
  # let(:note) { double :note, format: "Title: Title\nBody Text" }

  describe '#display' do
    it 'should correctly display the note entries' do
      note = double :note, format: "Title: Title\nBody Text"
      expect(note.format).to eq "Title: Title\nBody Text"
    end
  end
end
