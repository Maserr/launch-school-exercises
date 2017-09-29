// Build a program that asks a user for the length and width of a room in meters
// and then logs to the console the area of the room in both square meters and
// square feet.
//
// Note: 1 square meter == 10.7639 square feet
//
// Do not worry about validating the input at this time. Use the prompt()
// function to collect user input.

var FT2_TO_M2 = 10.7639;
var length = parseInt(prompt('Length of the room in meters:'), 10);
var width = parseInt(prompt('Width of the room in meters:'), 10);

var areaInMeters = length * width;
var areaInFeet   = areaInMeters * FT2_TO_M2;

console.log('The area of the room is ' + areaInMeters.toFixed(2) +
            ' square meters (' + areaInFeet.toFixed(2) + ' square feet).');
