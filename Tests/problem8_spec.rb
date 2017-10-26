require 'rspec'
require 'Problems/problem8'

describe '.sum_of_cubes' do

  it 'positive numbers' do
    expect(sum_of_cubes(1,3)).to eq(36)
  end

end