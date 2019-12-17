require ('rspec')
require ('pry')
require ('anagrams')

describe('anagram') do


  it('will compare two words to see if they are anagrams') do
    anagrams_antigrams =  Anagrams_Antigrams.new('cat', 'act')
    expect(anagrams_antigrams.anagram()).to(eq(true))
  end
  it('will account for words with different cases') do
    anagrams_antigrams =  Anagrams_Antigrams.new('Bury', 'Ruby')
    expect(anagrams_antigrams.anagram()).to(eq(true))
  end
  it('It will account for multiple words being submitted') do
    anagrams_antigrams =  Anagrams_Antigrams.new('Young lad', 'An old guy')
    expect(anagrams_antigrams.anagram()).to(eq(true))
  end
  it('will ask user to input an actual word if there are no vowels') do
    anagrams_antigrams =  Anagrams_Antigrams.new('hpg', 'dtt')
    expect(anagrams_antigrams.not_word()).to(eq(true))
  end
  it('will check if the two words are antigrams') do
    anagrams_antigrams =  Anagrams_Antigrams.new('pretty', 'moon')
    expect(anagrams_antigrams.antigram()).to(eq(true))
  end
end
