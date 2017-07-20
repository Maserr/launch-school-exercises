# sieve.rb
#
# Write a program that uses the Sieve of Eratosthenes to find all the primes
# from 2 up to a given number.
#
# The Sieve of Eratosthenes is a simple, ancient algorithm for finding all prime
# numbers up to any given limit. It does so by iteratively marking as composite
# (i.e. not prime) the multiples of each prime, starting with the multiples of
# 2.
#
# Create your range, starting at two and continuing up to and including the
# given limit. (i.e. [2, limit]).
#
# The algorithm consists of repeating the following over and over:
#
# * take the next available unmarked number in your list (it is prime)
# * mark all the multiples of that number (they are not prime)
#
# Repeat until you have processed each number in your range. When the algorithm
# terminates, all the numbers in the list that have not been marked are prime.
# The wikipedia article has a useful graphic that explains the algorithm.
#
# Notice that this is a very specific algorithm, and the tests don't check that
# you've implemented the algorithm, only that you've come up with the correct
# list of primes.

class Sieve
  def initialize(limit)
    @limit = limit
    @numbers = Array.new(limit + 1) { |number| number }
    @numbers[0] = nil
    @numbers[1] = nil
  end

  def primes
    @numbers.each do |number|
      next unless number
      (number**2).step(@limit, number) { |i| @numbers[i] = nil }
    end.compact
  end
end

# OTHER SOLUTIONS

# class Sieve
#   def initialize(limit)
#     @limit = limit
#     @numbers = Array.new(limit + 1, true)
#     @numbers[0] = false
#     @numbers[1] = false
#   end
#
#   def primes
#     primes = []
#
#     @numbers.each_with_index do |value, index|
#       next unless value
#       (index**2).step(@limit, index) { |i| @numbers[i] = false }
#     end
#
#     @numbers.each_with_index do |value, index|
#       primes.push(index) if value
#     end
#
#     primes
#   end
# end

# Using class prime
#
# require 'prime'
#
# class Sieve
#   def initialize(limit)
#     @limit = limit
#   end
#
#   def primes
#     Prime.entries(@limit)
#   end
# end
