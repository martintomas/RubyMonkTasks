# Problem Statement
# Given a 3 or 4 digit number with distinct digits,
# return a sorted array of all the unique numbers
# that can be formed with those digits.

def number_shuffle(number)
  digits = number.to_s.split(//).uniq
  factorial = (1..digits.length).inject(:*) || 1

  res = []
  res << digits.shuffle.join.to_i while res.uniq.size != factorial

  res.uniq.sort
end