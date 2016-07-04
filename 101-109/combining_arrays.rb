=begin

Write a method to that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates in the
original Arrays.

Examples

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=end

def merge(array1, array2)
  array1.concat(array2).uniq
  # array1 | array2
end

p merge([1, 3, 5], [3, 6, 9]) # => [1, 3, 5, 6, 9]
