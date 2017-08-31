// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
  console.log(myVar);
}

someFunction();

// LOGS:
//
// 'This is local'

// ANSWER:
//
// This is an example of variable shadowing. This happens when a local variable
// in a function "hides" a variable with the same name in an outer scope. The
// outer variable becomes unreachable within the function because JavaScript
// gives precedence to the inner one.
