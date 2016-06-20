=begin

Write a program that prompts the user for two positive integers, and then prints
the results of the following operations on those two numbers: addition,
subtraction, product, quotient, remainder, and power. Do not worry about
validating the input.

Example

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end

num1 = 0
num2 = 1

loop do
  puts "Enter the first number:"
  num1 = Integer(gets) rescue false

  if num1
    break
  else
    puts "Oops! That's not a valid option."
  end
end

loop do
  puts "Enter the second number:"
  num2 = Integer(gets) rescue false

  if num2 && num2 > 0
    break
  elsif num2 && num2 <= 0
    puts "Oops! The number should be greater than zero!"
  else
    puts "Oops! That's not a valid option."
  end
end

puts "#{num1} + #{num2} = #{num1 + num2}"
puts "#{num1} - #{num2} = #{num1 - num2}"
puts "#{num1} * #{num2} = #{num1 * num2}"
puts "#{num1} / #{num2} = #{num1 / num2}"
puts "#{num1} % #{num2} = #{num1 % num2}"
puts "#{num1} ** #{num2} = #{num1 ** num2}"
