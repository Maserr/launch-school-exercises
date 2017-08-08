/**
 *  write a program that asks a user for a phrase and gives back the number of
 *  characters. Go over the documentation for string and find an appropriate
 *  method to use.
 */

 var phrase = prompt('Please write a phrase:');
 var numOfChars = phrase.length;

 console.log('There are ' + numOfChars + ' characters in \"' + phrase + '\".');
