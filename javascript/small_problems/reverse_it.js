// Write a function that takes one argument, a string, and returns the same
// string with the words in reverse order.

function reverseSentence(sentenceString) {
  return sentenceString.split(' ').reverse().join(' ');
}

reverseSentence('');                     // ''
reverseSentence('Hello World');          // 'World Hello'
reverseSentence('Reverse these words');  // 'words these Reverse'
