// The following program is expected to log a multiplication table for the
// numbers 1 up to 10 to the console. Read through the code. Will the given code
// produce the expected result? Why or why not?

var row;
var i;
var j;

function padLeft(num) {
  return String(num).length <= 1 ? ' ' + num : num;
}

for (i = 1; i < 10; i++) {  // fix: for (i = 1; i <= 10; i++)
  row = '';
  for (j = 1; j <= 10; j++) {
    row += padLeft(i * j) + ' ';
  }
  console.log(row + '\n');
}

// The program only logs the numbers 1 up to 9. The condition for the first
// `for` loop should be change to `i <= 10`
