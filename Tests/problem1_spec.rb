require 'rspec'
require_relative '../Problems/problem1'

describe '#sort_string' do

  it 'should return sorted string based on length of each word' do
    expect(Problem1.sort_string('Awesome I am')).equal?('I am Awesome')
  end
end