require 'rspec'
require 'Problems/problem2'


describe 'Calculator' do

  before :all do
    @calculator = Calculator.new
  end

  describe '#add' do

      it 'positive number sum' do
        expect(@calculator.add(5,4)).eql?(9)
      end

      it 'negative and positive sum' do
        expect(@calculator.add(-4,4)).eql?(0)
      end

  end

  describe '#subtract' do

    it 'positive number subtract' do
      expect(@calculator.subtract(4,4)).eql?(0)
    end

    it 'negative and positive subtract' do
      expect(@calculator.subtract(4,-4)).eql?(8)
    end

  end
end