require 'rspec'
require 'Problems/problem7'

describe '.palindrome?' do

  it 'is palindrome' do
    expect(palindrome?('Never odd or even')).to be_truthy
  end

  it 'is palidrome longer whitespaces' do
    expect(palindrome?('Never     odd or even')).to be_truthy
  end

  it 'is not palidrome' do
    expect(palindrome?('Never palidrome')).to be_falsey
  end

  it 'is even palidrome' do
    expect(palindrome?('ohho')).to be_truthy
  end

  it 'is odd palidrome' do
    expect(palindrome?('ahhha')).to be_truthy
  end

end