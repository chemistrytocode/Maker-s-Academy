class Input

  def initialize
    puts "What is your name?"
    @greeting = gets.chomp
  end



end

class Greeter

  def greet(input = Input)
    message = input.new
    puts "Hello, #{message}"
  end
  
end
