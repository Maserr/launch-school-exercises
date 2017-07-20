# For this exercise, we'll be learning and practicing our knowledge of returning
# from lambdas, procs, and implicit blocks. Run each group of code below: For
# your answer to this exercise, write down your observations for each group of
# code. After writing out those observations, write one final analysis that
# explains the differences between procs, blocks, and lambdas.

# Group 1
def check_return_with_proc
  my_proc = proc { return }
  my_proc.call
  puts "This will never output to screen."
end

check_return_with_proc

# If we return from within a Proc, and that Proc is defined within a method.
# Then, we will immediately exit that method(we return from the method).

# Group 2
my_proc = proc { return }

def check_return_with_proc_2(my_proc)
  my_proc.call
end

check_return_with_proc_2(my_proc)

# If we return from within a Proc and that Proc is defined outside of a method.
# Then, an error will be thrown when we call that Proc. This occurs because
# program execution jumps to where the Proc was defined when we call that Proc.
# We cannot return from the top level of the program.

# Group 3
def check_return_with_lambda
  my_lambda = lambda { return }
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda

# If we return from within a Lambda, and that Lambda is defined within a method,
# then program execution jumps to where the Lambda code is defined. After that,
# code execution then proceeds to the next line of the method after the #call to
# that lambda.

# Group 4
my_lambda = lambda { return }
def check_return_with_lambda(my_lambda)
  my_lambda.call
  puts "This will be output to screen."
end

check_return_with_lambda(my_lambda)

# If we return from within a Lambda and that Lambda is defined outside a method,
# then program execution continues to the next line after the call to that
# Lambda. This is the same effect as the code in group 3.

# Group 5
def block_method_3
  yield
end

block_method_3 { return }

# If we return from an implicit block that is yielded to a method, then an error
# will be thrown. The reason for this error is the same as the one mentioned for
# group 2. We are trying to return from some code in our program that isn't in a
# method.


# Analysis:

# Procs and implicit blocks sometimes have the same behavior when we return from
# them. If a Proc is defined outside a method, and we return from it, then we'll
# get an error. The same thing occurs if we try to return from an implicit
# block, where the block itself isn't defined in a method. An error is thrown if
# we try to return from it.
#
# If we try to return from within a Proc that is defined within a method, then
# we immediately exit the method.
#
# If we try to return from a Lambda, the same outcome occurs, regardless of
# whether the Lambda is defined outside a method or inside of it. Eventually,
# program execution will proceed to the next line after the #call to that
# lambda.
