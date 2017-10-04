// Write a function that takes an Array of integers as input, multiplies all of
// the numbers together, divides the result by the number of entries in the
// Array, and returns the result as a String with the value rounded to 3 decimal
// places.

function showMultiplicativeAverage(numbers) {
  var product = numbers.reduce(function(total, number) {
    return total * number;
  }, 1);

  var average = product / numbers.length;

  return average.toFixed(3);
}

showMultiplicativeAverage([3, 5]);                // '7.500'
showMultiplicativeAverage([1, 2, 3, 4, 5]);       // '24.000'
showMultiplicativeAverage([2, 5, 7, 11, 13, 17]); // '28361.667'
