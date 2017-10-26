# Problem Statement
# Given an array, return true if all the elements are Fixnums.

def array_of_fixnums?(array)
  # array.each do |x|
  #   return false if !x.is_a?(Fixnum)
  # end
  # true

  # fixnum_array = array.find_all {|x| x.is_a?(Fixnum)}
  # array.length == fixnum_array.length

  array.all? { |x| x.is_a? Fixnum }
end