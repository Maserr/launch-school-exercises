# Write a method that cobines two arrays passed in as arguments, and returns a
# new array that contains all elements from both array arguments, with the
# elements taken in alternation.
#
# You may assume that both input arrays are non-empty, and that they have the
# same number of elements.

def interleave(array1, array2)
  result = []

  0.upto(array1.size - 1) do |index|
    result << array1[index]
    result << array2[index]
  end

  result

  # Short alternative using transpose
  # [array1, array2].transpose.flatten

  # Shortest alternative using zip
  # array1.zip(array2).flatten
end

p interleave([1, 2, 3], ["a", "b", "c"]) # => [1, "a", 2, "b", 3, "c"]
p interleave([1, 2, 100], ["a", 2, "c"]) # => [1, "a", 2, 2, 100, "c"]
p interleave(["A", 2, 3], [7, 1, "c"])   # => ["A", 7, 2, 1, 3, "c"]
