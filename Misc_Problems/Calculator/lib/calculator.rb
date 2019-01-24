class Calculator

  def initialise
    @total = 0
  end

  def return_answer
    "the answer is #{@total}"
  end

  def multiply(a, b)
    @total = a * b ; return_answer
  end

  def square(a)
    @total = a**2 ; return_answer
  end

end
