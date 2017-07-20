# Breakfast, Lunch, or Dinner? - Part 5

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  'Dinner'
  puts 'Dinner'
end

p meal
```

## Solution

It prints:

```ruby
Dinner
nil
```

Last line of the method returns ```nil``` because ```puts``` return always that value. And first print ```Dinner``` because we are using ```p``` before invoking the method and we have that string value in the first line inside the method.
