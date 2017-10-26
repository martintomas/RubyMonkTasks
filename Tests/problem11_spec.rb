require 'rspec'
require 'Problems/problem11'

describe '.kaprekar?' do

  it 'is kaprekar' do
    expect(kaprekar?(9)).to be_truthy
  end

  it 'is kaprekar complex' do
    expect(kaprekar?(297)).to be_truthy
  end

  it 'not kaprekar' do
    expect(kaprekar?(90)).to be_falsey
  end

end