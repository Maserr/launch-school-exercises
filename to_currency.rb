# Write a method that will return the appropriate currency representation of a string.

def to_currency(amount)
  dollars, decimal_point, cents = amount.to_f.round(2).to_s.partition(".")

  dollars = dollars.reverse.scan(/.{3}|.+/).join(",").reverse
  dollars.insert(0, "$")

  cents.insert(-1, "0") if cents.length < 2

  dollars + decimal_point + cents
end

p to_currency("100000")       # => "$100,000.00"
p to_currency("3456789879.1") # => "$3,456,789,879.10"
p to_currency("12343.43")     # => "$12,343.43"
p to_currency("12343.100")    # => "$12,343.10"
p to_currency("12343.996")    # => "$12,344.00"
