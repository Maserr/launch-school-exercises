// What will the following code log to the console and why? Don't run the code
// until you have tried to answer.

var myVar = 'This is global';

function someFunction() {
  var myVar = 'This is local';
}

someFunction();

console.log(myVar);

// LOGS:
//
// 'This is global'

// ANSWER:
//
// The program declares a variable named `myVar` in two places. These
// declarations create two different variables, with the same name though.
// This happens because they are created in different scopes.
//
// The first one, in line, 4 is declared in the global scope. In other workds,
// it is declared outside of any function. Therefore is available everywhere in
// the program.
//
// The second one in line 7 is declared within the function, and functions in
// JavaScript create a new variable scope. This second variable is a local
// variable to the function –only available within it– and shadows the
// outer variable with the same name.
//
// When we call `console.log(myVar)` in line 12, we are doing it in the global
// scope, then `myVar` refers to the global variable declared in line 4 and logs
// 'This is global'
