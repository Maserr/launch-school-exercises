// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

console.log(a);

var a = 1;

// ANSWER:
//
// It logs `undefined`.
//
// This happens because the JavaScript interpreter moves the variable
// declaration of `a` –not the assignment– to the top of its scope before
// executes the program. This is what we call hoisting.
//
// So the previous code is equivalent to:
//
// var a;
// console.log(a);
//
// a = 1;
//
// The variable assignment only happens when the expression is reached on
// execution.
