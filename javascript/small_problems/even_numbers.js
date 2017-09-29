// Log the even numbers from 1 to 99, inclusive, to the console. Log all numbers
// on separate lines.

for (var i = 1; i <= 99; i++) {
  if (i % 2 !== 0) {
    continue;
  }

  console.log(i);
}
