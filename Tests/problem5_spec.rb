require 'rspec'
require 'Problems/problem5'

describe '.random_select' do

  it 'returns array' do
    expect(random_select([2,5,8],2)).to be_a(Array)
  end

  context 'number is lower that array length' do

    it 'select random values' do
      expect(random_select([2,1,5,6],2).length).to eq(2)
    end

    it 'select zero values' do
      expect(random_select([2,1,5,6],0).length).to eq(0)
    end

  end

  it 'number is same as array length' do
    expect(random_select([2],1).length).to eq(1)
    expect(random_select([2],1)).to match_array([2])
  end

  it 'number is same bigger than array length' do
    expect(random_select([2],5).length).to eq(5)
    expect(random_select([2],5)).to match_array([2,2,2,2,2])
  end

end