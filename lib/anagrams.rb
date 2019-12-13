
class Anagrams_Antigrams
  attr_accessor(:input1, :input2)

def initialize(input1, input2)
  @input1 = input1
  @input2 = input2
end

  def anagram
  word1 = ((@input1.downcase.chars.sort.join).tr("'", "")).tr("\'", "")
  word2 = ((@input2.downcase.chars.sort.join).tr(" ", "")).tr("\'", "")

  if input1.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i } || input2.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i }
    output = "Please enter an actual word"
  elsif word1 == word2
    puts word1
    puts word2
    true
  else
    puts word1
    puts word2
    false
  end
  end
end
