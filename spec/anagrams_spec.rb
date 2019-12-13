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
  it('will compare two words to see if they are anagrams') do
    anagrams_antigrams =  Anagrams_Antigrams.new('cat', 'act')
    expect(anagrams_antigrams.anagram()).to(eq(true))
  end

end
