# Write a method that counts the number of occurrences of each element in a
# given array.
#
# Once counted, print each element alongside the number of occurrences.

def count_occurrences(array)
  occurrences = Hash.new

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each { |element, count| puts "#{element} => #{count}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2
