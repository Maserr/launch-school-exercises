// What will the following code log to the console and why?
// What is the hoisted equivalent of this code?

var logValue = 'foo';

function logValue() {
  console.log('Hello, world!');
}

console.log(typeof logValue);


// ANSWER:
//
// It logs "string".
// In the hoisting process, functions declarations take precedence over variable
// declarations. This means that function declarations are moved to the top of
// the scope before variable declarations.
//
// When we have a function declaration and a variable declaration with the same
// name, as happens here, the variable declaration is omitted because it becomes
// redundant. JavaScript lets the assignment, which is actually a reassignment.
//
// The hoisted equivalent of this code would be:
//
// ```javascript
// function logValue() {
//   console.log('Hello, world!');
// }
//
// logValue = 'foo';
//
// console.log(typeof logValue);
// ```
//
// We can see that at the beginning the variable `logValue` holds a function but
// later is reassigned to a `string` value. Then the console logs the typeof
// `logValue`, an in that moment is a `string`.
