class Anagrams_Antigrams
  attr_accessor(:input1, :input2)

  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2
  end

  def not_word
    (!input1.downcase.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i } || !input2.downcase.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i }) ? true : false
  end

  def antigram
    !input1.downcase.chars.any? { |i| (input2.downcase.chars).include? i } ? true : false
  end

  def anagram
    word1 = ((input1.downcase.chars.sort.join).tr(" ", "")).tr("\'", "")
    word2 = ((input2.downcase.chars.sort.join).tr(" ", "")).tr("\'", "")
    word1 == word2 ? true : false
  end
end

