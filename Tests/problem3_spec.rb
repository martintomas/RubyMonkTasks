require 'rspec'
require 'Problems/problem3'

describe '.length_finder' do

  it 'return lengths of words' do
    expect(length_finder(['Ruby','Rails','C42'])).to match_array([4,5,3])
  end

  it 'partially empty array' do
    expect(length_finder(['things','are','','awesome'])).to match_array([6,3,0,7])
  end

  it 'empty array' do
    expect(length_finder([])).to match_array([])
  end

end