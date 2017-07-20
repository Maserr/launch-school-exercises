# Counting sheep - Part 1

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def count_sheep
  5.times do |sheep|
    puts sheep
  end
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
5
```

The method use ```Integer#times``` so is iterating 5 times from 0 to 4 – values the method prints because is using ```puts``` inside the block.

It also prints ```5``` because the ```#times``` block is the last line of code inside the method and ```#times``` return always the initial integer.
