require 'rspec'
require 'Problems/problem16'

describe 'MyArray' do

  before :all do
    @my_array = MyArray.new([1,2,3])
  end

  it 'simple sum' do
    expect(@my_array.sum).to eq(6)
  end

  it 'simple sum with initial value' do
    expect(@my_array.sum(10)).to eq(16)
  end

  it 'sum with yields' do
    expect(@my_array.sum(0) { |n| n**2 }).to eq(14)
  end

end