require 'spec_helper'

describe SumFinder do
  before :context do
    @sum_finder = SumFinder.new(1)
  end

  describe 'initialize' do
    it 'calls find_and_sum_multiples' do
      expect_any_instance_of(SumFinder).to receive(:find_and_sum_multiples)
      SumFinder.new(1)
    end
  end

  describe 'find_and_sum_multiples' do
    it 'calls find_multiples' do
      allow_any_instance_of(SumFinder).to receive(:sum_multiples)
      expect_any_instance_of(SumFinder).to receive(:find_multiples)
      @sum_finder.find_and_sum_multiples
    end

    it 'calls sum_multiples' do
      allow_any_instance_of(SumFinder).to receive(:find_multiples) { 'multiple' }
      expect_any_instance_of(SumFinder).to receive(:sum_multiples).with('multiple')
      @sum_finder.find_and_sum_multiples
    end
  end

  describe 'find_multiples' do
    it 'calls is_multiple?' do
      num = rand(1..100)
      @sum_finder.instance_variable_set(:@number, num)
      expect_any_instance_of(SumFinder).to receive(:is_multiple?).exactly(num).times
      @sum_finder.find_multiples
    end
  end

  describe 'find_multiples' do
    it 'calls is_multiple_five?' do
      num = 22
      expect_any_instance_of(SumFinder).to receive(:is_multiple_five?)
      @sum_finder.is_multiple?(num)
    end

    it 'calls is_multiple_three?' do
      num = 22
      expect_any_instance_of(SumFinder).to receive(:is_multiple_three?)
      @sum_finder.is_multiple?(num)
    end
  end

  describe 'is_multiple_three?' do
    it 'returns true if multiple of 3' do
      num = [3,6,9.12,15, 1113].sample 
      expect(@sum_finder.is_multiple_three?(num)).to eq true
    end

    it 'returns false if not multiple of 3' do
      num = [2, 25, 31, 32].sample 
      expect(@sum_finder.is_multiple_three?(num)).to eq false
    end
  end

  describe 'is_multiple_five?' do
    it 'returns true if multiple of 5' do
      num = [5,25,50,45,38985].sample 
      expect(@sum_finder.is_multiple_five?(num)).to eq true
    end

    it 'returns false if not multiple of 5' do
      num = [1, 3, 4, 6, 8].sample 
      expect(@sum_finder.is_multiple_five?(num)).to eq false
    end
  end

  describe 'sum_multiples' do
    it 'returns the sum of the array' do
      num_array = [5,25,50,45]
      expect(@sum_finder.sum_multiples(num_array)).to eq (5 + 25 + 50 + 45) 
    end
  end
end 
