# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

def diamond(size)
  diamond = Array.new
  # upper part
  1.upto(size) { |index| diamond << "*" * index if index.odd? }
  # lower part
  diamond[0..-2].reverse.each { |line| diamond << line }
  # display array centering lines
  diamond.each.map { |line| puts line.center(size) }
end

diamond(1)
# *

diamond(3)
#  *
# ***
#  *

diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
