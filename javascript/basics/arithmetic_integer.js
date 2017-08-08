/**
 * Did the results of the program match what you expected? Why or why not? If
 * not can you fix it?
 *
 * Assume positive integers as inputs.
 */


var number1 = prompt('Enter the first number:');
var number2 = prompt('Enter the second number:');

// Better. Explicit coercion.
var number1 = parseInt(prompt('Enter the first number:'), 10);
var number2 = parseInt(prompt('Enter the second number:'), 10);

console.log(number1 + ' + ' + number2 + ' = ' + (number1 + number2));
console.log(number1 + ' - ' + number2 + ' = ' + (number1 - number2));
console.log(number1 + ' * ' + number2 + ' = ' + (number1 * number2));
console.log(number1 + ' / ' + number2 + ' = ' + Math.floor(number1 / number2));
console.log(number1 + ' % ' + number2 + ' = ' + (number1 % number2));
console.log(number1 + ' ** ' + number2 + ' = ' + Math.pow(number1, number2));

/**
 * JS does lot of implicit coercion. It's generally better to do explicit
 * coercion to have better control in our programs. We can fix this here
 * converting inputs to numbers.
 */
