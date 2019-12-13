require ('rspec')
require ('pry')
require ('anagrams')

describe ('anagram') do
  it('will take in a string and convert it into an array') do
    anagrams_antigrams =  Anagrams_Antigrams.new('cat')
    expect(anagrams_antigrams.anagram()).to(eq(['c','a','t']))
  end
end
