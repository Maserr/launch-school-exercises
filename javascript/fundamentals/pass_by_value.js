// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var a = 7;

function myValue(b) {
  b += 10;
}

myValue(a);
console.log(a);

// ANSWER:
//
// The program logs 7.
//
// In JavaScript when you pass in a variable with a primitive value to a
// function, it is *passed by value*. This means that a copy of the argument's
// value is assigned to the parameter of the function –which acts as a local
// variable within the function.
//
// Here the value of the global variable `a` is passed into the function. Then
// the parameter `b` gets assigned a copy of the value of `a`, which is 7. The
// function does a compound assignment to the local variable adding 10 to it.
// The global variable `a` never gets affected by the operation within the
// function. Because of that, `a` still has the original value, which is logged
// to the console in the last line.
