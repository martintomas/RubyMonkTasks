# Problem Statement
# Compute the sum of cubes for a given range a through b.

def sum_of_cubes(a, b)
  (a..b).inject(0) { |sum, element| sum + element**3 }
end