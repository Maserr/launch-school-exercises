// Log all odd numbers from 1 to 99, inclusive, to the console. Log all numbers
// on separate lines.

for (var i = 1; i <= 99; i = i + 2) {
  console.log(i);
}

// Repeat this exercise with a technique different from the one that you used
// and different from the one provided. Consider also adding a way for the user
// to specify the limits of the odd numbers logged to the console.

function logOddNumbers(start, end) {
  var number = start;

  while (number <= end) {
    if (number % 2 === 1) {
      console.log(number);
    }
    number = number + 1;
  }
}

logOddNumbers(1, 99);
