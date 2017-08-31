// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var myVar = 'This is global';

function someFunction() {
  console.log(myVar);
}

someFunction();

// ANSWER:
//
// It logs 'This is global'.
//
// JavaScript begins to look for a variable in the current scope. If it can not
// find it, look outwards in the scope chain until it finds a matching variable.
// If it doesn't find the variable, it creates a global variable instead.
//
// What happens here is that JavaScript finds the variable `myVar` declared in
// the global scope. Then the value of this global variable is logged when the
// function `someFunction()` is invoked.
