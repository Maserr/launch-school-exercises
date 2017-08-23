/**
 * A user created a person object literal as seen in the code. The user assigned
 * methods to return the first and last name of the person. The user tried out
 * the code. What was the result?
 */

var person = {
  firstName: function() {
    return 'Victor';
  },
  lastName: function() {
    return 'Reyes';
  },
};

console.log(person.firstName + ' ' + person.lastName);

/**
 * Logs:
 *
 * function () {
 * return 'Victor';
 * } function () {
 * return 'Reyes';
 * }
 *
 * Methods are called in the same way that functions are —including parentheses:
 * person.firstName();
 */

console.log(person.firstName() + ' ' + person.lastName());
