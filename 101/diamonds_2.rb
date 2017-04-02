# Try modifying your solution or our solution so it prints only the outline of
# the diamond.

def diamond(size)
  diamond = Array.new
  # upper part
  1.upto(size - 1) do |index|
    diamond << "*" if index == 1
    diamond << "*" + " " * index + "*" if index.odd?
  end
  # lower part
  diamond[0..-2].reverse.each { |line| diamond << line }
  # display array centering lines
  diamond.each { |line| puts line.center(size) }
end

diamond(3)
#  *
# * *
#  *

diamond(5)
#   *
#  * *
# *   *
#  * *
#   *

diamond(9)
#     *
#    * *
#   *   *
#  *     *
# *       *
#  *     *
#   *   *
#    * *
#     *
