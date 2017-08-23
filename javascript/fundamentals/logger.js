// Read and understand the code below. Why will it log `debugging`?

function debugIt() {
  var status = 'debugging';

  function logger() {
    console.log(status);
  }

  logger();
}

debugIt();

// Yes, it will. Due to JavaScript lexical scoping rules the variable
// `status` is available inside the function `logger`.
