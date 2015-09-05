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

end 
