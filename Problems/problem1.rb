# Problem Statement
# Create a method named 'sort_string' which accepts a String and rearranges
# all the words in ascending order, by length. Let's not treat the punctuation
# marks any different than other characters and assume that we will
# always have single space to separate the words.

class Problem1
  def self.sort_string(sentence = '')
    sentence
        .split(' ')
        .sort { |x,y| x.length <=> y.length }
        .join(' ')
  end
end

if __FILE__ == $0
  puts Problem1.sort_string('Tohle je nejaky testovaci string')
end