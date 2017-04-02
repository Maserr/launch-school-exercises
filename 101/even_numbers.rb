=begin

Print all even numbers from 1 to 99, inclusive. All numbers should be printed on
separate lines.

=end

(1..99).each do |num|
  puts num if num.even?
end

# One alternative

1.upto(99) { |num| puts num if num.even? }
