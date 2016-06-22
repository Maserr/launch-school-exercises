=begin

Investigate Enumerable.inject (also known as Enumerable.reduce), How might this
method be useful in solving this problem? (Note that Enumerable methods are
available when working with Arrays.) Try writing such a solution. Which is
clearer? Which is more succint?

=end

def multisum(number)
  (0..number).inject do |total, n|
    total += n if n % 3 == 0 || n % 5 == 0
    total
  end
end

p multisum(3)    # => 3
p multisum(5)    # => 8
p multisum(10)   # => 33
p multisum(1000) # => 234168
