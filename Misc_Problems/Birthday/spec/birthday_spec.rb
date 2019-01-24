require 'birthday'

describe Birthday do
  it 'returns the name' do
    bd = Birthday.new("Milo")
    expect(bd.name).to eq "Milo"
  end
end
