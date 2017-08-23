// In the previous exercise, you reimplemented a function that converts
// non-negative numbers to strings. In this exercise, you're going to extend
// that function by adding the ability to represent negative numbers.
// You may not use any of the standard conversion functions available in
// JavaScript, such as String(), Number.prototype.toString() or doing
// ' ' + number. You may, however, use integerToString from the previous
// exercise.

var DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];

function integerToString(number) {
  var str = '';
  var remainder;

  do {
    remainder = number % 10;
    number = Math.floor(number / 10);

    str = DIGITS[remainder] + str;
  } while (number > 0);

  return str;
}

function signedIntegerToString(number) {
  if (number > 0) {
    return '+' + integerToString(number);
  } else if (number < 0) {
    return '-' + integerToString(-number);
  } else {
    return integerToString(number);
  }
}

signedIntegerToString(4321);      // "+4321"
signedIntegerToString(-123);      // "-123"
signedIntegerToString(0);         // "0"
