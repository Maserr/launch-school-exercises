# Breakfast, Lunch, or Dinner? - Part 4

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
```

## Solution

It prints:

```ruby
Dinner
Breakfast
```

The method outputs first ```Dinner``` because is using ```#puts``` inside the method. And later returns ```Breakfast``` which is printed too because we are using ```puts``` too when invoking the method.
