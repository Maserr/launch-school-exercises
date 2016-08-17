# Write a method that will take an array of numbers, and only return those that
# are prime.

def is_prime?(integer)
  return false if integer == 1
  (2..(integer - 1)).each { |number| return false if integer % number == 0 }

  true
end

def select_primes(numbers)
  numbers.select { |number| number if is_prime?(number) }
end

p select_primes([1, 2, 3, 4])         # => [2, 3]
p select_primes([4, 6, 8, 10])        # => []
p select_primes([23, 28, 57, 94, 97, 99]) # => [23, 97]
