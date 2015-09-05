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
end 
