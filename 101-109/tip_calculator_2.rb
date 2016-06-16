=begin

Our solution prints the results for our as $30.0 and $230.0 instead of the more
usual $30.00 and $230.00. Modify your solution so it always prints the results
with 2 decimal places.

=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f

tip = bill * (tip_percentage / 100).round(2)
total = (bill + tip).round(2)

puts ""
puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"
