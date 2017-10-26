# Problem Statement
# Create a method 'random_select' which, when given
# an array of elements (array) and a number (n),
# returns n randomly selected elements from that array.

def random_select(array, n)
  res = []
  n.times { |i| res << array[rand(array.length)]}
  return res
end