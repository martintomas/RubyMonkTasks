require 'rspec'
require 'Problems/problem4'

describe '.find_frequency' do

  it 'word exists' do
    expect(find_frequency('Ruby is The best language in the World','the')).to eq(2)
  end

  it 'word is missing' do
    expect(find_frequency('Ruby is The best language in the World','house')).to eq(0)
  end

  it 'empty sentence' do
    expect(find_frequency('', 'the')).to eq(0)
  end

  it 'empty word' do
    expect(find_frequency('Ruby is The best language in the World','')).to eq(0)
  end

end