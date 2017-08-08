// What does this log? Can you explain these results?

var name = 'Bob';
var saveName = name;
name.toUpperCase(); // => "BOB"
console.log(name, saveName); // => "Bob Bob"

// Strings are primitives in JavaScript and therefore immutable.
