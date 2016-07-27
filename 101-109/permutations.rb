# The elements of an Array can be permuted, that is, arranged, in a variety of
# different sequences. Such rearrangements are called permutations. So, for
# example, both [2, 3, 1] and [1, 3, 2] are permutations of the array [1, 2, 3].
# The complete list of permutations for [1, 2, 3] is an Array of Arrays in which
# each nested Array is a permutation of the original Array:
#
# [
#   [1, 2, 3],
#   [1, 3, 2],
#   [2, 1, 3],
#   [2, 3, 1],
#   [3, 1, 2],
#   [3, 2, 1]
# ]

# Write a method that takes an Array, and returns an Array of Arrays that
# represent the permutations of the original Array. The order of the
# permutations does not matter. You may not use the Array#permutations method
# nor any other standard method that is meant to generate permutations -- please
# devise your own way of generating the permutations.
#
# For simplicity, you may assume that each element of the array has a unique
# value.

def permutations(array)
  return [array] if array.size == 1

  result = []
  size = 1.upto(array.size).reduce { |product, value| product * value }

  while result.size != size
    permutation = array.shuffle
    result << permutation if !result.include?(permutation)
  end

  result.sort
end


p permutations([2])
# => [[2]]

p permutations([1, 2])
# => [[1, 2], [2, 1]]

p permutations([1, 2, 3])
# => [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

p permutations([1, 2, 3, 4])
# => [[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4],
#     [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2],
#     [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4],
#     [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1],
#     [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4],
#     [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1],
#     [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3],
#     [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]
