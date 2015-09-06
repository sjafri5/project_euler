require 'spec_helper'

describe SumFinder do
  before :context do
    @sum_finder = FibSumFinder.new(1)
  end
  
  describe 'initialize' do
    before :context do
      @num = rand(1..100)
    end
    it 'has @max_number as instance var' do
      sum_finder = FibSumFinder.new(@num)
      max_num = sum_finder.instance_variable_get(:@max_number)
      expect(max_num).to eq @num
    end

    it 'has @max_number as instance var' do
      sum_finder = FibSumFinder.new(@num)
      first_num = sum_finder.instance_variable_get(:@first_num)
      expect(first_num).to eq 1 
    end


    it 'has @max_number as instance var' do
      sum_finder = FibSumFinder.new(@num)
      second_num = sum_finder.instance_variable_get(:@second_num)
      expect(second_num).to eq 2 
    end

    it 'has @even_numbers as instance var' do
      sum_finder = FibSumFinder.new(@num)
      even_numbers = sum_finder.instance_variable_get(:@even_numbers)
      expect(even_numbers).to eq [] 
    end
  end

  describe
end
