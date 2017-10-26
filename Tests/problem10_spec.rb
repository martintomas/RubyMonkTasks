require 'rspec'
require 'Problems/problem10'

describe '.array_of_fixnums?' do

  it 'are fixnums' do
    expect(array_of_fixnums?([1,2,3])).to be_truthy
  end

  it 'are strings' do
    expect(array_of_fixnums?(['h','b','c'])).to be_falsey
  end

  it 'combination of fixnum and string' do
    expect(array_of_fixnums?([1,2,5,'f'])).to be_falsey
  end

end