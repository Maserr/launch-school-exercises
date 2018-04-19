// Write a function that takes a string argument, and returns a new string that
// contains the value of the original string with all consecutive duplicate
// characters collapsed into a single character.

function crunch(string) {
  var charsArray = string.split('');
  var newString = '';
  var currentChar;

  charsArray.forEach(function(char) {
    if (char !== currentChar) {
      newString += char;
    }

    currentChar = char;
  });

  return newString;
}

// With REGEX
//
// function crunch(string) {
//   return string.replace(/(.)\1+/g, '$1');
// }

crunch('ddaaiillyy ddoouubbllee');    // "daily double"
crunch('4444abcabccba');              // "4abcabcba"
crunch('ggggggggggggggg');            // "g"
crunch('a');                          // "a"
crunch('');                           // ""
