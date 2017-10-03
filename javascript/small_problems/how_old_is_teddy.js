// Build a program that randomly generates and logs Teddy's age to the console.
// Have the age be a random number between 20 and 200 (inclusive).
//
// Example Output
//
// Teddy is 69 years old!

function randonBetween(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

var age = randonBetween(20, 200);

console.log('Teddy is ' + age + ' years old!');
