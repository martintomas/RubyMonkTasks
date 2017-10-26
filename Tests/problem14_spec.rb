require 'rspec'
require 'Problems/problem14'

describe '.number_shuffle' do

  it 'do single digit shuffle' do
    expect(number_shuffle(1)).to match_array([1])
  end

  it 'do multi digit shuffle' do
    expect(number_shuffle(123)).to match_array([123, 132, 213, 231, 312, 321])
  end

  it 'remove duplicate values' do
    expect(number_shuffle(1222333)).to match_array([123, 132, 213, 231, 312, 321])
  end

end