# What's my value? - Part 9

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a
```

## Solution

This is a case of shadowing. This occurs when we have two local variables with the same name. The variable defined in the inner scope "shadows" the one in the outer scope.
