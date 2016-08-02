# What's my value? - Part 6

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a
```

## Solution

It would be an error the kind of ```undefines local variable```. That's because ```a``` is not visible inside the method. Local variables defined outside the method are not visible inside the method, and viceversa.
