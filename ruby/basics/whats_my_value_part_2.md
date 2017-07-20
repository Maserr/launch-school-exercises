# What's my value? - Part 2

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(a)
  a += 10
end

my_value(a)
puts a
```

## Solution

It prints ```7```.

We have the same case as the first problem, just with a variable change name from ```b``` to ```a```.

The first variable ```a``` is not visible inside the method. Methods create a new variable scope.
