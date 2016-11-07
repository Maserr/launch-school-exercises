# Write a method that takes two arguments: the first is the starting number, and
# the second is the ending number. Print out all numbers between the two
# numbers, except if a number is divisible by 3, print "Fizz", if a number is
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
# print "FizzBuzz".

def fizzbuzz(starting_number, ending_number)
  starting_number.upto(ending_number) do |number|
    fizz = (number % 3 == 0)
    buzz = (number % 5 == 0)

    puts case
         when fizz && buzz then "FizzBuzz"
         when fizz         then "Fizz"
         when buzz         then "Buzz"
         else number
         end
  end
end

fizzbuzz(1, 15)
# => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
