/**
 * Go over the program. What does it log to the console at lines 12, 16, 20, and
 * 24? Is it what you expected? Why or why not?
 */

var myBoolean = true;
var myString = 'hello';
var myArray = [];
var myOtherString = '';

if (myBoolean) {
  console.log('Hello'); // => Hello
}

if (!myString) {
  console.log('World'); // Doesn't log anything. Condition evaluates to false.
}

if (!!myArray) {
  console.log('World'); // => World
}

if (myOtherString || myArray) {
  console.log('!');     // => !
}
