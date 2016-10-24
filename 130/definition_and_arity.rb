# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# A Proc object can be created simple calling to proc
# A Proc is an object of class Proc
# A Proc doesn't enforce the number of arguments passed in. If nothing is
# passed, then nil is assigned to the block variable.

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}" }
my_second_lambda = -> (thing) { puts "This is a #{thing}" }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
my_lambda.call
my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}" }

# A Lambda object can be created simple calling to lambda or using ->
# A Lambda object can't be created with Lambda.new
# A Lambda is a different variety of Proc
# A Lambda enfoces the number of arguments passed in. It will raise an error if
# they not match.

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
block_method_1('seal')

# A block passed to a method does not require the correct number of arguments.
# If a block variable is defined, and no value is passed to it, then nil will be
# assigned to that block variable.
# If we yield and no block is passed, an error is thrown.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# If we pass too few arguments to a block, then the remaining ones are assigned
# a nil value.
# Blocks will throw an error if a variable is referenced that doesn't exist in
# the block's scope.


# Analysis:

# Lambdas are types of Proc's. Technically they are both Proc objects. An
# implicit block is a grouping of code, a type of closure, it is not an Object.

# Lambdas enforce the number of arguments passed to them. Implicit block and
# Procs do not enforce the number of arguments passed in.
