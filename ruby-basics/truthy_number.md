# Truthy number

What will the following code print? Why? Don't run it until you've attempted
to answer.

```ruby
number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end
```

## Solution

It prints:

```
"My favorite number is 7."
```

Every expression used in a condition in Ruby evaluates to ```true``` but ```false``` or ```nil```.
