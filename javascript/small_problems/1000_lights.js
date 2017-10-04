// You have a bank of switches before you, numbered from 1 to n. Each switch is
// connected to exactly one light that is initially off. You walk down the row
// of switches, and toggle every one of them. You go back to the beginning, and
// on this second pass you toggle switches 2, 4, 6, and so on. On the third
// pass, you go back again to the beginning and toggle switches 3, 6, 9, and so
// on. You repeat this process and keep going until you have been through n
// repetitions.
//
// Write a program that takes one argument, total number of switches, and
// returns an array of lights that are on after n repetitions.
//
// detailed result of each round for 5 lights
// Round 1: all lights are on
// Round 2: lights 2 and 4 are now off; 1, 3, and 5 are on
// Round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
// Round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
// Round 5: lights 2, 3, and 5 are now off; 1 and 4 are on


// INPUT
// a number representing the number of switches and iterations

// OUTPUT
// an array where each element represent the number of a light ON after all
// the iterations

// REQUIREMENTS
// – all lights are OFF at the beginning
// – we iterate the same times as the number passed in to the function
//   – in the 1st iteration all lights are set to ON
//   – on each following iteration we toggle the switch equivalent to the number
//     iteration and the following switches multiples of that number.
//     (a switch ON pass to be OFF and viceversa)

// ALGORITHM
// – create an array of length equal to the number passed in to the function
//   – set all lights to OFF
// – iterate trough the array
//   – toggle lights that are multiple of the number of the iteration
// – filter array with lights ON and return it

function lightsOn(n) {
  var result = [];
  var lights = setLights(n);

  for (var i = 1; i <= n; i++) {
    lights = toggleLights(lights, i);
  }

  lights.forEach(function(light, index) {
    if (light) {
      result.push(index + 1);
    }
  });

  return result;
}

function setLights(n) {
  var lights = [];

  for (var i = 0; i < n; i++) {
    lights.push(false);
  }

  return lights;
}

function toggleLights(lights, round) {
  return lights.map(function(light, index) {
    return (index + 1) % round === 0 ? !light : light;
  });
}

lightsOn(1);    // [1]
lightsOn(2);    // [1]
lightsOn(5);    // [1, 4]
lightsOn(25);   // [1, 4, 9, 16, 25]
lightsOn(100);  // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
