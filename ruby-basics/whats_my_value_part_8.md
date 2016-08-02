# What's my value? - Part 8

What will the following code print, and why? Don't run the code until you have tried to answer.

```ruby
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a
```

## Solution

We have an error ```undefined local variable```. That's because we are trying to assign a value to a local variable inside the block that it doesn't being declared before.
