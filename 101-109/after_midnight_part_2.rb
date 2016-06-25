=begin

As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative, the
time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the
number of minutes before and after midnight, respectively. Both methods should
return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686

Disregard Daylight Savings and Standard Time and other irregularities.

=end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# format("%02d:%02d", hours, minutes)

def after_midnight(time)
  hours, minutes = time.split(":").map(&:to_i)
  # minutes_after_midnight = hours.to_i * MINUTES_PER_HOUR + minutes.to_i
  minutes_after_midnight = hours * MINUTES_PER_HOUR + minutes
  minutes_after_midnight
end

def before_midnight(time)
  minutes_before_midnight = MINUTES_PER_DAY - after_midnight(time)
  minutes_before_midnight = 0 if minutes_before_midnight == MINUTES_PER_DAY
  minutes_before_midnight
end

puts after_midnight('00:00')  # => 0
puts before_midnight('00:00') # => 0
puts after_midnight('12:34')  # => 754
puts before_midnight('12:34') # => 686
puts after_midnight("00:01")  # => 1
puts before_midnight("00:01") # => 1439
puts after_midnight("23:59")  # => 1439
puts before_midnight("23:59") # => 1
