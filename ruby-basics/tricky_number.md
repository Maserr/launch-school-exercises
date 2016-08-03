# Tricky number

What will the following code print? Why? Don't run it until you've attempted to answer.

```ruby
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number
```

## Solution

It prints ```1```.

That's why we just have an ```if``` conditional inside the block –last line of code inside the method– with an ```else``` clause. We know this clause will be always ignored because the ```if``` clause will always evaluates to ```true```. And inside the ```if``` we have an assignment that always return the value assigned to.
