/**
 * Read the code and identify the bug in it. Think about it first before
 * running it.
 */

var myObject = {
  a: 'name',
  'b': 'test',
  123: 'c',
  1: 'd'
};

myObject[1];
myObject[a];  // raises a ReferenceError. It should be myObject['a'];
myObject.a;
