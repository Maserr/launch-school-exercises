# Breakfast, Lunch, or Dinner? - Part 6

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal
```

## Solution

It prints ```Breakfast```.

We have a ```return``` in the first line of the method and ```return``` immediately exits the methods and returns the provided value –in this case ```Breakfast```. So the method ignored any line of code after ```return```.
