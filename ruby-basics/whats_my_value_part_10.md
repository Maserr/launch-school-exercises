# What's my value? - Part 10

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a
```

## Solution

We have an error because the local variable ```a``` is not visible inside the method.
