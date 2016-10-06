# Write a method that takes a sorted array of integers as an argument, and
# returns an array that includes all of the missing integers (in order) between
# the first and last elements of the argument.

def missing(numbers)
  missing_numbers = []
  first = numbers.first
  last = numbers.last

  first.upto(last) do |number|
    missing_numbers << number unless numbers.include?(number)
  end

  missing_numbers
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []
