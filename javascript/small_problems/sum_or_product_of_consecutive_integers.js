// Write a program that asks the user to enter an integer greater than 0, then
// asks if the user wants to determine the sum or product of all numbers between
// 1 and the entered integer.
//
// Examples:
//
// Please enter an integer greater than 0: 5
// Enter "s" to compute the sum, "p" to compute the product. s
//
// The sum of the integers between 1 and 5 is 15.
//
//
// Please enter an integer greater than 0: 6
// Enter "s" to compute the sum, "p" to compute the product. p
//
// The product of the integers between 1 and 6 is 720.


function calculateProduct(number) {
  var total = 1;

  for (var i = 1; i <= number; i++) {
    total *= i;
  }

  return total;
}

function calculateSum(number) {
  var total = 0;

  for (var i = 1; i <= number; i++) {
    total += i;
  }

  return total;
}

var number = parseInt(prompt('Please enter an integer greater than 0:'), 10);
var operation = prompt('Enter "s" to compute the sum' +
                       ', or "p" to compute the product:');

switch (operation) {
  case 'p':
    console.log('The product of the integers between' +
                ' 1 and ' + String(number) + ' is ' + calculateProduct(number));
    break;
  case 's':
    console.log('The sum of the integers between' +
                ' 1 and ' + String(number) + ' is ' + calculateSum(number));
    break;
  default:
    console.log('Oops! Unknown operation.');
}
