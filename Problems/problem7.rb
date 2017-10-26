# Problem Statement
# Given a sentence, return true if the sentence is a palindrome.

def palindrome?(sentence)
  sentence = sentence.downcase.gsub(/\s+/,'')

  sentence == sentence.reverse
end