require 'rspec'
require 'Problems/problem9'

describe '.non_duplicated_values' do

  it 'non duplicates exists' do
    expect(non_duplicated_values([1,2,2,3,3,4,5])).to match_array([1,4,5])
  end

  it 'all values are duplicated' do
    expect(non_duplicated_values([1,1,2,2,3,3,4,4,5,5])).to match_array([])
  end

  it 'no duplicates' do
    expect(non_duplicated_values([1,2,3,4,5])).to match_array([1,2,3,4,5])
  end

end