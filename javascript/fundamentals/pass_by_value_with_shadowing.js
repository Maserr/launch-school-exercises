// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

var a = 7;

function myValue(a) {
  a += 10;
}

myValue(a);
console.log(a);

// ANSWER:
//
// It logs 7.
//
// Here the only distinction to the last exercise is that the parameter of the
// function has the same name as the global variable passed in. As parameters
// acts as local variables within the function, the global variable never gets
// affected, because it gets shadowed by the local one.
