require 'game'

describe Game do

  before(:each) do
    @game = Game.new
  end

  it 'initialises a Game object with an empty array of players' do
    expect((@game.players).empty?).to eq true
  end

  it 'adds a player to the array of players' do
    expect((@game.add_player("Paul").empty?)).to_not eq true
  end

  it 'generates a number between 1-6 when roll_dice is called with 1 dice' do
    expected_values = [1,2,3,4,5,6]
    @game.set_number_of_dice(1)
    expect(expected_values.include?(@game.roll_dice_function)).to eq true
  end

  it 'generates a number between 3-18 when roll_dice is called with 3 dice' do
    expected_values = [3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
    @game.set_number_of_dice(3)
    expect(expected_values.include?(@game.roll_dice_function)).to eq true
  end

  it 'selects a random player, rolls a dice and returns a readable output' do
    game1 = @game
    game1.add_player("Paul")
    game1.add_player("John")
    game1.add_player("Alex")
    expect(@game.roll).to eq "#{game1.player_turn} has rolled #{game1.player_roll}"
  end

end

# S rand
