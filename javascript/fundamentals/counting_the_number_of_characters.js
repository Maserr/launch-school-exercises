// Write a program that asks a user for a phrase and gives back the number of
// characters. Go over the documentation for string and find an appropriate
// method to use.

var phrase = prompt('Please write a phrase:');
var phraseSize = phrase.length;

console.log('There are ' + phraseSize + ' characters in \"' + phrase + '\".');


// The solution counts all the characters including spaces. Rewrite it such that
// it ignores spaces and it only counts alphabetic characters.

var phrase = prompt('Please write a phrase:');
var phraseSize = phrase.replace(/[^A-Za-z]+/g, '').length;

console.log('There are ' + phraseSize + ' characters in \"' + phrase + '\".');
