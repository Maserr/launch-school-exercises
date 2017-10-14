// Write a program that, given a number, can find the sum of all the multiples
// of particular numbers up to but not including that number.
//
// If we list all the natural numbers up to but not including 20 that are
// multiples of either 3 or 5, we get 3, 5, 6, 9, 10, 12, 15, and 18. The sum of
// these multiples is 78.
//
// Write a program that can find the sum of the multiples of a given set of
// numbers. If no set of numbers is given, default to 3 and 5.

function sumOfMultiples(limit, multiples = [3, 5]) {
  var sum = 0;

  for (var naturalNumber = 1; naturalNumber < limit; naturalNumber++) {
    for (var i = 0; i < multiples.length; i++) {
      if (naturalNumber % multiples[i] === 0) {
        sum += naturalNumber;
        break;
      }
    }
  }

  return sum;
}

sumOfMultiples(1);    // 0
sumOfMultiples(4);    // 3
sumOfMultiples(10);   // 23
sumOfMultiples(100);  // 2318
sumOfMultiples(1000); // 233168

sumOfMultiples(20,    [7, 13, 17]); // 51
sumOfMultiples(15,    [4, 6]);      // 30
sumOfMultiples(150,   [5, 6, 8]);   // 4419
sumOfMultiples(10000, [43, 47]);    // 2203160
