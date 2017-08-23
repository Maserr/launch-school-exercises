/**
 * The function below takes an array as argument and returns its average. The
 * user of the function put in the statements below and was expecting the
 * function to return 5 to test it. What is the value returned?
 */

var myArray = [5, 5];

myArray[-1] = 5;

myArray[-2] = 5;

function average(array) {
  var sum = 0;

  for (var i = -2; i < array.length; i++) {
    sum += array[i];
  }

  return sum / array.length;
}

average(myArray); // => 10
// A non-positive integer key is not considered as part of an array's length.
