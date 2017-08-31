// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var myVar = 'This is global';

function someFunction() {
  myVar = 'This is local';
}

someFunction();

console.log(myVar);

// ANSWER:
//
// It logs 'This is local'.
//
// This happens because the global variable `myVar` gets reassigned in the
// function body. Any variable in the global scope, as it is `myVar` here, is
// accessible anywhere in the program.
