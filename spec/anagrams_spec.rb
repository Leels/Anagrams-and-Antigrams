require ('rspec')
require ('pry')
require ('anagrams')

describe('anagram') do

  # it('will take in a string and convert it into an array') do
  # anagrams_antigrams =  Anagrams_Antigrams.new('cat')
  #   expect(anagrams_antigrams.anagram()).to(eq(['c','a','t']))
  # end
  # it('will alphabetize array and return to string') do
  # anagrams_antigrams =  Anagrams_Antigrams.new('cat')
  #   expect(anagrams_antigrams.anagram()).to(eq('act'))
  # end
  # it('will compare two words to see if they are anagrams') do
  #   anagrams_antigrams =  Anagrams_Antigrams.nsew('cat', 'act')
  #   expect(anagrams_antigrams.anagram()).to(eq(true))
  # end
  # it('will ccount for words that have different cases') do
  #   anagrams_antigrams =  Anagrams_Antigrams.new('Eat', 'Tea')
  #   expect(anagrams_antigrams.anagram()).to(eq(true))
  # end
  # it('will ccount for words that have different cases') do
  #   anagrams_antigrams =  Anagrams_Antigrams.new('young lad', 'an old man')
  #   expect(anagrams_antigrams.anagram()).to(eq(true))
  # end
  it('will caccount for words that have apostrophes') do
    anagrams_antigrams =  Anagrams_Antigrams.new('don\'t', 'dont')
    expect(anagrams_antigrams.anagram()).to(eq(true))
  end
end
