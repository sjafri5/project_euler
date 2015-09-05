# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#

class SumFinder
  def initialize(number)
    @number = number
    
    find_and_sum_multiples
  end

  def find_and_sum_multiples
    multiples = find_multiples
    sum_multiples(multiples)
  end

  def find_multiples
    (1..@number).select { |num| is_multiple?(num) }
  end

  def is_multiple?(number)
    is_multiple_three?(number) || is_multiple_five?(number)
  end

  def is_multiple_three?(number)
    (number % 3) == 0
  end

  def is_multiple_five?(number)
    (number % 5) == 0
  end

  def sum_multiples(multiples)
  end
end
