=begin

Modify the program to ask for the input measurements in feet, and display the
results in square feet, square inches, and square centimeters.

=end

SQM_TO_SQFT = 10.7639
SQFT_TO_SQCM = 929.030
SQFT_TO_SQIN = 144

puts "Enter the length of the room in feet:"
room_length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
room_width = gets.chomp.to_f

room_area = room_length * room_width
room_area_sqcm = room_area * SQFT_TO_SQCM
room_area_sqin = room_area * SQFT_TO_SQIN

puts "The area of the room is #{room_area.round(2)} square feet, " + \
     "#{room_area_sqin.round(2)} square inches, and " + \
     "#{room_area_sqcm.round(2)} square centimeters."
