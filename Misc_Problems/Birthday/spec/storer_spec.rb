require 'storer'

describe Storer do

  # it 'responds to add_birthday' do
  # expect(subject).to respond_to(:add_birthday).with(1).arguments
  # end

  it 'initialises with an empty array of birthdays' do
    expect(subject.birthdays).to eq([])
  end

  it 'adds a birthday to the array' do
    # create a birthday
    bd = Birthday.new('Milo')
    # add it
    subject.add_birthday(bd)
    # see it in the array
    expect(subject.birthdays).to include(bd)
    end
    
end
