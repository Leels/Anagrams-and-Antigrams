require ('rspec')
require ('pry')
require ('anagrams')

describe('anagram') do
  anagrams_antigrams =  Anagrams_Antigrams.new('cat')

  # it('will take in a string and convert it into an array') do
  #   expect(anagrams_antigrams.anagram()).to(eq(['c','a','t']))
  # end
  it('will alphabetize array and return to string') do
    expect(anagrams_antigrams.anagram()).to(eq('act'))
  end

end
