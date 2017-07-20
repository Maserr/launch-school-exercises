# Try modifying our solution to use String#chomp! and String#chop!, respectively.

puts "What's your name?"
name = gets.chomp!

if name[-1] == "!"
  name = name.chop!
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name}."
end
