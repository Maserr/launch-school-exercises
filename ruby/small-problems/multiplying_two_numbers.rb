=begin

Create a method that takes two arguments, multiplies them together, and returns
the result.

Example:

multiply(5.2, 3) == 15.6

=end

def multiply(num1, num2)
  (num1 * num2).round(1)
end

p multiply(5.2, 3)
# => 15.6

=begin

For fun: what happens if the first argument is an Array? What do you think is
happening here?

=end

def multiply_array(array, num)
  array * num
end

p multiply_array([1, 2, 3], 3)
# => [1, 2, 3, 1, 2, 3, 1, 2, 3]
