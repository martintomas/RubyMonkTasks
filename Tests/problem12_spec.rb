require 'rspec'
require 'Problems/problem12'

describe 'Color' do

  it 'initializes the color with the RGB values' do
    r = 100
    g = 200
    b = 255
    color = Color.new(r, g, b)
    expect(color.r).to eq(r)
    expect(color.g).to eq(g)
    expect(color.b).to eq(b)
  end

  context '#brightness_index' do

    it 'first color' do
      color = Color.new(42, 21, 58)
      expect(color.brightness_index).to eq(31)
    end

    it 'second color' do
      color = Color.new(100, 200, 255)
      expect(color.brightness_index).to eq(176)
    end

  end

  it '#brightness_difference' do
    color1 = Color.new(42, 21, 58)
    color2 = Color.new(240, 41, 25)
    expect(color1.brightness_difference(color2)).to eq(67)
  end

  it '#hue_difference' do
    color1 = Color.new(42, 21, 58)
    color2 = Color.new(240, 41, 25)
    expect(color1.hue_difference(color2)).to eq(251)
  end

  context '#enough_contrast?' do

    it 'not enough contrast' do
      color1 = Color.new(42, 21, 58)
      color2 = Color.new(240, 41, 25)
      expect(color1.enough_contrast?(color2)).to be_falsey
    end

    it 'enough contrast' do
      color1 = Color.new(42, 42, 42)
      color2 = Color.new(210, 210, 210)
      expect(color1.enough_contrast?(color2)).to be_truthy
    end

  end

end