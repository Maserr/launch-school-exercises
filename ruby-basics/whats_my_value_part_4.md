# What's my value? - Part 4

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a
```

## Solution

It prints ```Xy-zy```.

In this case the method ```my_value``` is mutating the caller because we have a ```string``` –these are mutable on Ruby– and also because the method uses the destructive method ```String#[]==```.
