require 'rspec'
require 'Problems/problem6'

describe '#is_an_experienced_programmer?' do

  it 'ideal candidate' do
    candidate = Candidate.new(2, 800, ['Ruby', 'Python', 'Java'], false, 18)
    expect(candidate.is_an_experienced_programmer?).to be_truthy
  end

  it 'too young and no github points' do
    candidate = Candidate.new(1, 200, ['Ruby'], false, 18)
    expect(candidate.is_an_experienced_programmer?).to be_falsey
  end

  it 'too young but github points' do
    candidate = Candidate.new(1, 800, ['Ruby'], false, 18)
    expect(candidate.is_an_experienced_programmer?).to be_truthy
  end

  it 'no github points but experinced' do
    candidate = Candidate.new(2, 0, ['Ruby'], false, 18)
    expect(candidate.is_an_experienced_programmer?).to be_truthy
  end

  it 'no ruby' do
    candidate = Candidate.new(2, 0, ['Python'], false, 18)
    expect(candidate.is_an_experienced_programmer?).to be_falsey
  end

  it 'applied recently' do
    candidate = Candidate.new(2, 0, ['Ruby'], true, 18)
    expect(candidate.is_an_experienced_programmer?).to be_falsey
  end

  it 'too young' do
    candidate = Candidate.new(2, 0, ['Ruby'], false, 14)
    expect(candidate.is_an_experienced_programmer?).to be_falsey
  end

end