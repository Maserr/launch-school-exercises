# Write a method that will take an array of numbers, and return the number of
# primes in the array.

def is_prime?(integer)
  return false if integer == 1
  (2..(integer - 1)).each { |number| return false if integer % number == 0 }

  true
end

def select_primes(numbers)
  numbers.select { |number| number if is_prime?(number) }
end

def count_primes(numbers)
  # select_primes(numbers).size
  numbers.count { |number| is_prime?(number) }
end

p count_primes([1, 2, 3, 4])             # => 2
p count_primes([4, 6, 8, 10])            # => 0
p count_primes([23, 28, 57, 94, 97, 99]) # => 2
