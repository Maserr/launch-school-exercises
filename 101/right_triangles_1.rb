=begin

Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left of
the triangle, and the other end at the upper-right.

=end

def triangle(number)
  stars = Array.new(number, " ")
  1..number.times.each do |index|
    stars[index] = "*"
    puts stars.reverse.join
  end
end

triangle(5)

#     *
#    **
#   ***
#  ****
# *****

triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
