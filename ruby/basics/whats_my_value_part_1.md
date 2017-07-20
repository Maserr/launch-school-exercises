# What's my value? - Part 1

What will the following code print and why? Don't run the code until you have tried to answer.

```ruby
a = 7

def my_value(b)
  b += 10
end

my_value(a)
puts a
```

## Solution

It prints ```7```.

There are two ways of explain this.

One is that numbers are immutable in Ruby, so there is no way the method ```my_value``` mutate valued referenced by ```b```.

The other one is that inside the method we have an assignment so ```b``` refers to a new object, one different to ```a```.
