# Breakfast, Lunch, or Dinner? - Part 2

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  'Evening'
end

puts meal
```

## Solution

It prints ```Evening```.

The method is returning that string value although it is not using the ```return``` keyword specifically.

In ruby any method returns the return value of the last line of the method.
