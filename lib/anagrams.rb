
class Anagrams_Antigrams
  attr_accessor(:word)

def initialize(word)
  @word = word
end

  def anagram
  another_word = @word.chars.sort.join
  another_word
  end
end
