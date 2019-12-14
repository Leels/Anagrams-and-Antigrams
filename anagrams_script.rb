# usr/bin/env ruby
require('./lib/anagrams.rb')

puts 'Welcome to Anagrams!'
puts 'This program helps you determine if given words or phrases are anagrams or not.'
puts 'Word/phrase no. 1:'
input1 = gets.chomp
puts 'Word/phrase no. 2:'
input2 = gets.chomp
anagrams_antigrams = Anagrams_Antigrams.new(input1, input2)
outcome = anagrams_antigrams.anagram()

if !input1.downcase.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i } || !input2.downcase.chars.any? { |i| ["a", "e", "i", "o", "u", "y"].include? i }
  puts "Please enter actual words, silly!"
elsif !input1.downcase.chars.any? { |i| (input2.downcase.chars).include? i }
  puts "#{input1} and #{input2} are not anagrams... but are ANTIGRAMS!!!"
elsif outcome
  puts "#{input1} and #{input2} are both ANAGRAMS!!!"
else
  puts "#{input1} and #{input2} are neither anagrams nor antigrams."
end
