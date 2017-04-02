# In the previous exercise, we developed a procedural method for computing the
# value of the nth Fibonacci numbers. This method was really fast, computing the
# 20899 digit 100,001st Fibonacci sequence almost instantly.
#
# In this exercise, you are going to compute a method that returns the last
# digit of the nth Fibonacci number.

def fibonacci(number)
  n1 = 0
  n2 = 1
  result = 0

  (number - 1).times do
    result = n2 + n1
    n1 = n2
    n2 = result
  end

  result
end

def fibonacci_last(number)
  # fibonacci(number).to_s[-1].to_i

  last_2 = [1, 1]
  3.upto(number) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

puts fibonacci_last(15)        # => 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # => 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # => 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # => 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # => 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # => 4
