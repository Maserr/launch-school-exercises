# Counting sheep - Part 3

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep
```

## Solution

It prints:

```
0
1
2
nil
```

The method iterates using ```Integer#times``` and prints the values but as we have an ```if``` conditional, when the value of ```sheep``` is greater than 2 the method returns the value associated – in this case we don't have any value so it returns ```nil``` – and exists the method.
