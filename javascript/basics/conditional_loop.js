// Review the code below. The program should log numbers that are multiples of
// 3 from 0 to 9. Will the expected behavior happen? Why or why not?

var i = 0;

while (i < 10) {
  if (i % 3 === 0) {
    console.log(i);
  } else {
    i += 1;
  }
}

// The expected behaviour won't happen. It will be an infinite loop looging 0's
// to the console. The value of `i` never gets incremented.
