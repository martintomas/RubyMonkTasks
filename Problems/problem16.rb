# Problem Statement
# Given a custom class MyArray,
# write a 'sum' method that takes a block parameter.

class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    array.inject(initial_value) do |sum, value|
      block_given? ? sum + yield(value) : sum + value
    end
  end
end