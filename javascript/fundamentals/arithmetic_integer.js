// Did the results of the program match what you expected? Why or why not? If
// not can you fix it? Assume positive integers as inputs.

var number1 = prompt('Enter the first number:');
var number2 = prompt('Enter the second number:');

console.log(number1 + ' + ' + number2 + ' = ' + (number1 + number2));
console.log(number1 + ' - ' + number2 + ' = ' + (number1 - number2));
console.log(number1 + ' * ' + number2 + ' = ' + (number1 * number2));
console.log(number1 + ' / ' + number2 + ' = ' + Math.floor(number1 / number2));
console.log(number1 + ' % ' + number2 + ' = ' + (number1 % number2));
console.log(number1 + ' ** ' + number2 + ' = ' + Math.pow(number1, number2));


// ANSWER: prompt returns the input collected from the user as a string. Then
// both variables `number1` and `number2` point to string values, not numbers
// as we should expect.
//
// When we try to log those operations to the console, we get some unexpected
// results. JavaScript does implicit coercion there and we get values that we
// don't expect. For example, an string coerced to a NaN value. It would be
// better if we do explicit coercion before hand to have a better control in our
// program.

// Possible solution:
var number1 = parseInt(prompt('Enter the first number:'), 10);
var number2 = parseInt(prompt('Enter the second number:'), 10);
