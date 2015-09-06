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

  describe 'find_sum' do
    it 'calls append_current_even_vals' do
      expect_any_instance_of(FibSumFinder).to receive(:append_current_even_vals)
      @sum_finder.find_sum
    end

    it 'calls append_current_even_vals' do
      allow_any_instance_of(FibSumFinder).to receive(:append_current_even_vals)
      expect_any_instance_of(FibSumFinder).to receive(:update_or_calculate_sum)
      @sum_finder.find_sum
    end
  end

  describe 'append_current_even_vals' do
    it 'calls is_even?' do
      expect_any_instance_of(FibSumFinder).to receive(:is_even?)
      @sum_finder.append_current_even_vals
    end

    it 'appends @second_num to @even_numbers if true' do
      @sum_finder.instance_variable_set(:@second_num, 'foo')
      @sum_finder.instance_variable_set(:@even_numbers, [])
      allow_any_instance_of(FibSumFinder).to receive(:is_even?) { true }
      @sum_finder.append_current_even_vals

      expect(@sum_finder.even_numbers).to eq ['foo']
    end
  end
end
