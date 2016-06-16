=begin
Write a program that outputs all possibilities to put + or - or nothing between
the numbers 1,2,…,9 (in this order) such that the result is 100.

For example 1 + 2 + 3 - 4 + 5 + 6 + 78 + 9 = 100.
=end

operators = ["+", "-", ""]
numbers = (1..9).to_a

operators_combinations = operators.repeated_permutation(8).to_a

operators_combinations.each_index do |index|
  # Build combination
  combination = numbers.zip(operators_combinations[index]).flatten.compact.join()
  combination = combination.gsub(/([+-])/, ' \1 ')

  # Calculate value of the combination
  combination_value = eval(combination)

  puts "#{combination} = #{combination_value}" if combination_value == 100
end
