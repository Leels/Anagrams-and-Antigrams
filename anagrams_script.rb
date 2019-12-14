# usr/bin/env ruby
require('./lib/anagrams.rb')

puts 'Welcome to Anagrams!'
puts 'This program helps you determine if given words or phrases are anagrams or not.'
puts 'Word/phrase no. 1:'
input1 = gets.chomp
puts 'Word/phrase no. 2:'
input2 = gets.chomp
anagrams_antigrams = Anagrams_Antigrams.new(input1, input2)
not_word = anagrams_antigrams.not_word()
antigram = anagrams_antigrams.antigram()
anagram = anagrams_antigrams.anagram()

if not_word
  puts "Please enter actual words, silly!"
elsif antigram
  puts "#{input1} and #{input2} are not anagrams but are ANTIGRAMS!!!"
elsif anagram
  puts "#{input1} and #{input2} are both ANAGRAMS!!!"
else
  puts "#{input1} and #{input2} are neither anagrams nor antigrams."
end
