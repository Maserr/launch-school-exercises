// Write a function, randomizer that accepts n number of callbacks that will be
// executed at a random point in time. In addition to executing the callbacks,
// randomizer should also log the elapsed time in seconds. To limit the
// randomness of the points in time that callbacks will be executed, you may
// assume that all callbacks should be executed within 2 * number of callbacks
// seconds.

function randomizer() {
  var callbacks = [].slice.call(arguments);
  var secondsEnd = 2 * callbacks.length;
  var secondsElapsed = 0;
  var timeLogger = setInterval(function() {
    secondsElapsed += 1;
    console.log(secondsElapsed);

    if (secondsElapsed >= secondsEnd ) {
      clearInterval(timeLogger);
    }
  }, 1000);

  callbacks.forEach(function(callback) {
    var executeTime = Math.floor(Math.random() * secondsEnd * 1000);
    setTimeout(callback, executeTime);
  });
}

// Here's some sample code as reference on the exepcted outcome:

function callback1() {
  console.log('callback1');
}

function callback2() {
  console.log('callback2');
}

function callback3() {
  console.log('callback3');
}

randomizer(callback1, callback2, callback3);
// Possible output:
// 1
// 2
// "callback2"
// "callback3"
// 3
// 4
// 5
// "callback1"
// 6
