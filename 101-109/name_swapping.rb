# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

def swap_name(name)
  # splitted_name = name.split
  # first_name = splitted_name[0]
  # last_name = splitted_name[1]
  #
  # "#{last_name}, #{first_name}"
  name.split(' ').reverse.join(', ')
end

puts swap_name('Joe Roberts') # => 'Roberts, Joe'
