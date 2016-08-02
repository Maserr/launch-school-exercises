# What's my value? - Part 7

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

## Solution

It prints ```3```.

The program iterates over each element of the array and in each iteration is assigning the value of the element to the variable ```a```. So the local variable ```a``` gets the last value in the array.
