class Storer
  attr_reader :birthdays

  def initialize
    @birthdays = []
  end

  def add_birthday(birthday)
    @birthdays << birthday
  end

end
