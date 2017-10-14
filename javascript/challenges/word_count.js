// Write a program that given a phrase can count the occurrences of each word in
// that phrase.
//
// For example, if we count the words for the input "olly olly in come free",
// we should get:
//
// olly: 2
// in: 1
// come: 1
// free: 1

function wordCount(text) {
  if (!text) {
    return {};
  }

  var count = {};
  var words = text.toLowerCase().match(/([a-z]+(\'?|\-?)[a-z]+|[0-9]+)/g);

  words.forEach(function(word) {
    count[word] = count[word] + 1 || 1;
  });

  return count;
}

var text = 'olly olly in come free';
wordCount(text); // { olly: 2, in: 1, come: 1, free: 1 }

text = '';
wordCount(text); // {}

text = 'word'
wordCount(text); // { word: 1 }

text = 'one of each';
wordCount(text); // { one: 1, of: 1, each: 1}

text = 'one fish two fish red fish blue fish';
wordCount(text); // { one: 1, fish: 4, two: 1, red: 1, blue: 1 }

text = 'all the kings horses and all the kings men';
wordCount(text); // { all: 2, the: 2, kings: 2, horses: 1, and: 1, men: 1 }

text = 'car : carpet as java : javascript!!&@$%^&';
wordCount(text); // { car: 1, carpet: 1, as: 1, java: 1, javascript: 1 }

text = 'one,two,three';
wordCount(text); // { one: 1, two: 1, three: 1 }

text = 'one,\ntwo,\nthree';
wordCount(text); // { one: 1, two: 1, three: 1 }

text = 'testing, 1, 2 testing';
wordCount(text); // { '1': 1, '2': 1, testing: 2 }

text = 'go Go GO';
wordCount(text); // { go: 3 }

text = "First: don't laugh. Then: don't cry.";
wordCount(text); // { first: 1, 'don\'t': 2, laugh: 1, then: 1, cry: 1 }

text = "Joe can't tell between 'large' and large.";
wordCount(text); // { joe: 1, 'can\'t': 1, tell: 1, between: 1, large: 2, and: 1 }

text = "There aren't arrays but array-like objects.";
wordCount(text); // { there: 1, 'aren\'t': 1, arrays: 1, but: 1, 'array-like': 1, objects: 1 }
