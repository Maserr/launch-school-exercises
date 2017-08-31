// What will the following code log to the console and why?
// Don't run the code until you have tried to answer.

logValue();

function logValue() {
  console.log('Hello, world!');
}

// ANSWER:
//
// It logs 'Hello, World!'.
//
// We are able to call the function before it is declared because of hoisting.
// JavaScript moves complete function declarations, including their code blocks
// to the top of their respective scope, before executing the program.
//
// Then, the code above is equivalent to:
//
// function logValue() {
//   console.log('Hello, world!');
// }
//
// logValue();
//
