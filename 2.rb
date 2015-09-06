# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with 1
# and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the sum 
# of the even-valued terms.

class FibSumFinder
  def initialize(number)
    @max_number = number
    @first_num = 1
    @second_num = 2
    @even_numbers = []
  end

  def find_sum
    # calls method that check adds to array of even values
    # calls method that updates first and second number
    # calls method that checks if max number is hit
    #
  end

end
