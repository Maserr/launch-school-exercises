// One of the ways to manage the flow of a program is through the use of
// conditionals. Go over the code below and specify how many possible
// flows/paths there are.

if (condition1) {
  // some code
  if (condition2) {
    // some code
  } else {
    // some code
  }
} else {
  // some code
  if (condition4) {
    // some code
    if (condition5) {
      // some code
    }
  }
}


// 5 possible paths:
//
// condition1 -> condition 2
// condition 1 -> not condition 2
// not condition 1
// not condition 1 -> condition 4
// not condition 1 -> condition 4 -> condition 5
