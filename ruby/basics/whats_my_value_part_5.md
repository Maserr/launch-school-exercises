# What's my value? - Part 5

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a
```

## Solution

It prints ```Xyzzy```.

We have an assignment inside the method and these never change the value of an object, they create a new object instead. For that reason here ```a``` doesn't change.
