# Problem Statement
# Given an Array, return the elements that are
# present exactly once in the array.

def compute_element_occurrence(values)
  uniq_elements = Hash.new(0)
  values.map { |x| uniq_elements[x] += 1 }
  uniq_elements
end

def non_duplicated_values(values)
  # res = []
  # compute_element_occurrence(values).each_pair { |key, val| res << key if val == 1 }
  # res

  values.find_all { |x| values.count(x) == 1 }
end