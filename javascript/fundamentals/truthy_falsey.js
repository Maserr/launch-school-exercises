// Go over the program. What does it log to the console at lines 10, 14, 18,
// and 22? Is it what you expected? Why or why not?

var myBoolean = true;
var myString = 'hello';
var myArray = [];
var myOtherString = '';

if (myBoolean) {
  console.log('Hello');
}

if (!myString) {
  console.log('World');
}

if (!!myArray) {
  console.log('World');
}

if (myOtherString || myArray) {
  console.log('!');
}

// ANSWER
//
// Line 7 logs the string "Hello" because the expression in the `if` statement
// evaluates to `true`. That happens because the variable `myBoolean` is set to
// the boolean value `true`. And `true` is `true` :)
//
// Line 11 doesn't log anything. The expression in the conditional statement
// evaluates a variable that points to a non-empty string value. Non-empty
// string values are considered truthy but here is preceded by the logical not
// `!` operator which converts the value to boolean and then negates it. So the
// expression evaluates to `false` and the block of code associated is not
// executed.
//
// Line 15 logs the string "World". The variable in the expression points to
// an empty-array value, which is considered truthy by JavaScript. It is
// preceded by a double logical not operator, which always returns the value's
// boolean equivalent. In this case returns `true` and makes possible to execute
// the log statement.
//
// Line 19 logs the string "!". The expression in the conditional examine,
// using the logical or operator, if either of the values is `true` or truthy.
// The first operand references to an empty string, which is a falsy value, then
// the second operand get evaluated, and does that resulting in a truthy value
// (arrays are truthy). Then the expression evaluates to `true` making possible
// to execute the log statement.
