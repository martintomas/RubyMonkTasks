require 'rspec'
require 'Problems/problem15'


describe 'Restaurant' do

  before :all do
    @restaurant = Restaurant.new({:rice => 1, :noodles => 1})
  end

  it 'cost of single order' do
    expect(@restaurant.cost({:rice => 3, :noodles => 2})).to eq(5)
  end

  it 'const of multiple order' do
    expect(@restaurant.cost({:rice => 3, :noodles => 2}, {:rice => 2, :noodles => 2})).to eq(9)
  end

end