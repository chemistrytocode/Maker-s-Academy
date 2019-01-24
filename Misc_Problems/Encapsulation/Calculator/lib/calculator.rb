require_relative 'printer'

class Calculator

  def initialize(printer = Printer)
    @printer = printer.new
  end

  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print(answer)
    @printer.print(answer)
  end
end
