=begin

Write a program that asks the user to enter an integer greater than 0, then asks
if the user wants to determine the sum or product of all numbers between 1 and
the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

=end

def calculate_sum(number)
  total = 0
  (1..number).select { |num| total += num }
  total
end

def calculate_product(number)
  total = 1
  (1..number).select { |num| total *= num }
  total
end

number = 1
operation = ""

loop do
  puts "Please enter an integer greater than 0:"
  number = Integer(gets) rescue false

  if number && number > 0
    break
  else
    puts "Oops! That's not a valid option."
  end
end

loop do
  puts "Please, enter 's' to compute the sum, 'p' to compute the product:"
  operation = gets.chomp.downcase

  if operation == "s" || operation == "p"
    break
  else
    puts "Oops! That's not a valid option."
  end
end

if operation == "s"
  result = calculate_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{result}."
elsif operation == "p"
  result = calculate_product(number)
  puts "The product of the integers between 1 and #{number} is #{result}."
end
