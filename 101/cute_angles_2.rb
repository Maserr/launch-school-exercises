# Modify our solution so it works with negative values as well as non-negative
# values.

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(angle)
  angle = 360 + angle if angle < 0

  total_seconds = (angle * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)

  "#{degrees}°#{format("%02d", minutes)}'#{format("%02d", seconds)}\""
end

puts dms(30)        # => %(30°00'00")
puts dms(76.73)     # => %(76°43'48")
puts dms(254.6)     # => %(254°36'00")
puts dms(93.034773) # => %(93°02'05")
puts dms(0)         # => %(0°00'00")
puts dms(360)       # => %(360°00'00") || %(0°00'00")

puts dms(-90)        # => %(270°00'00")
puts dms(-76.73)     # => %(283°16'12")
