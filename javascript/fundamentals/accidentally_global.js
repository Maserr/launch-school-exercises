// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

function someFunction() {
  myVar = 'This is global';
}

someFunction();
console.log(myVar);


// ANSWER:
//
// It logs 'This is global'.
//
// We don't have any variable declaration here either inside a function or in
// the global scope. What JavaScript does when the function is invoked is to
// look up for the variable `myVar` in the scope chain. As it cannot find a
// matching variable in any scope, it declares a global variable with the name
// `myVar` and later executes the assignment.
//
// When the program invokes the `console.log()` function logs the value of the
// global variable `myVar` that JavaScript have declared before.
