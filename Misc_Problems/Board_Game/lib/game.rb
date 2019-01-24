class Game
  attr_reader :players, :player_turn, :player_roll

  def initialize
    @players = []
    @number_of_dice = 1
  end

  def add_player(player)
    @players << player
  end

  def select_player
    @players.sample
  end

  def set_number_of_dice(number)
    @number_of_dice = number
  end

  def roll_dice_function
    total = []
    @number_of_dice.times { total << rand(1..6)}
    total.inject(:+)
  end

  def roll
    @player_turn = select_player
    @player_roll = roll_dice_function
    "#{@player_turn} has rolled #{@player_roll}"
  end

end
