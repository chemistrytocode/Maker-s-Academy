require_relative 'authenticate'

class User
  attr_reader :name, :bio, :age, :authenticate

  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
    @authenticate = Authenticate.new(password)
  end

  def profile
    raise "User not authenticated" unless authenticate.authenticated
    "#{name}, born in #{birth_year}: #{bio}"
  end

  private

  def birth_year
    Time.new.year - age
  end

end
