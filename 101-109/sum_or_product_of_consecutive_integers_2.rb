=begin

The compute_sum and compute_product methods are simple and should be familiar. A
more rubyish way of computing sums and products is with the Enumberable#inject
method. #inject is a very useful method, but if you've never used it before, it
can be difficult to understand.

Take some time to read the documentation for #inject. (Note that all Enumerable
methods can be used on Array.) Try to explain how it works to yourself.

Try to use #inject in your solution to this problem.

=end
def calculate_sum(number)
  (1..number).inject { |sum, num| sum + num }
end

def calculate_product(number)
  (1..number).inject { |product, num| product * num }
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
