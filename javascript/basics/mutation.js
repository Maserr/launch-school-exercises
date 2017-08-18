/**
 * What will the following code log to the console, and why? Don't run the code
 * until you have tried to answer.
 */

var array1 = ['Moe', 'Larry', 'Curly', 'Chemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo'];
var array2 = [];

for (var i = 0; i < array1.length; i++) {
  array2.push(array1[i]);
}

for (var i = 0; i < array1.length; i++) {
  if (array1[i].startsWith('C')) {
    array1[i] = array1[i].toUpperCase();
  }
}

console.log(array2);
/**
 * Logs:
 *
 * ['Moe', 'Larry', 'Curly', 'Chemp', 'Harpo', 'Chico', 'Groucho', 'Zeppo']
 *
 * array2 is a copy of array1
 */
