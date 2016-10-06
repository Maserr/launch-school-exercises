# Write a method that takes an optional block. If the block is specified, the
# method should execute it, and return the value returned by the block. If no
# block is specified, the method should simply return the String 'Does not
# compute.'.
#

def compute(num)
  block_given? ? yield(num) : "Given number: #{num}"
end

compute(7) == 'Given number: 7'
compute(10) { |n| n * n } == 100
compute(100) { |n| n * n } == 10000
