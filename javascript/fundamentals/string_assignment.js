// What does this log? Can you explain these results?

var name = 'Bob';
var saveName = name;
name.toUpperCase(); // => 'BOB'
console.log(name, saveName); // => 'Bob Bob'

// ANSWER: it logs 'Bob Bob'. Both variables `name` and `saveName` references to
// the same primitive string 'Bob'. In line 5 the variable `name` invokes the
// `.toUpperCase()` method but it doesn't change or mutate the value. That's
// because strings are primitive types and they are immutable in JavaScript.


// How is it possible that strings are primitive but still able to call methods?

// ANSWER: we are able to use methods on primitive values because JavaScript
// converts temporarily that value to an object of the same type in order to
// access the properties and methods of that object prototype.
