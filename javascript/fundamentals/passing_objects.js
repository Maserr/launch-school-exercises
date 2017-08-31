// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var a = [1, 2, 3];

function myValue(b) {
  b[2] += 7;
}

myValue(a);
console.log(a);

// ANSWER:
//
// It logs `[1, 2, 10]`.
//
// JavaScript is *pass by value*, but when we passed an object into a function
// it seems that JavaScript is *pass by reference*. That's not entirely true.
//
// It is key to understand that JavaScript is actually passing a reference
// to an object by value. In other words, JavaScript is effectively copying
// the reference, not the object itself. Then we have two different variables
// that hold two different references to the same object. Therefore, the
// function can modify the properties of the object passed in.
