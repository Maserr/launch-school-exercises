# Counting sheep - Part 2

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep
```

## Solution

It prints:

```
0
1
2
3
4
10
```

The method iterates 5 times using ```Integer#times``` and prints values from 0 to 4. It also prints the value returned from the last line, in this case ```10```.
