# Problem Statement
# Given a sentence containing multiple words, find the
# frequency of a given word in that sentence.
# Construct a method named 'find_frequency' which accepts
# two arguments 'sentence' and 'word', both of which
# are String objects.

def find_frequency(sentence, word)
  # sentence.split(' ').inject(0) { |sum, element| element.casecmp(word) == 0 ? sum + 1 : sum } # too complicated
  sentence.downcase.split.count(word.downcase)
end

