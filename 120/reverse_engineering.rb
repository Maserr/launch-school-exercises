# Write a class that will display:
#
# ABC
# xyz
#
# when the following code is run:
#
# my_data = Transform.new('abc')
# puts my_data.uppercase
# puts Transform.lowercase('XYZ')

class Transform
  attr_accessor :data

  def self.lowercase(text)
    text.downcase
  end

  def initialize(data)
    @data = data
  end

  def uppercase
    data.upcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
