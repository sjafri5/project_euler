# Each new term in the Fibonacci sequence is generated
# by adding the previous two terms. By starting with 1
# and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence
# whose values do not exceed four million, find the sum 
# of the even-valued terms.

class FibSumFinder
  attr_accessor :second_num, :even_numbers
 
  def initialize(number)
    @max_number = number
    @first_num = 1
    @second_num = 2
    @even_numbers = []
  end

  def find_sum
    append_current_even_vals
    update_or_calculate_sum
  end

  def append_current_even_vals
    @even_numbers << @second_num if is_even?
  end

  def is_even?
    @second_num.even?
  end

  def update_or_calculate_sum
  end
end
