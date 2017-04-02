# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.

def star(n)
  star = Array.new(n) { [" "] * n }

  star.each_with_index do |line, index|
    # diagonal line from upper left to bottom right
    line[index]       = "*"
    # diagonal line from upper right to bottom left
    line[n-(index+1)] = "*"
    # vertical central line
    line[n / 2]       = "*"
    # horizontal central line
    line.map! { |elem| elem = "*" } if index == n / 2
  end

  star.each { |line| puts line.flatten.join }
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
