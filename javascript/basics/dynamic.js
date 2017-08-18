// Read through the sample code below. What gets logged by lines 13 and 14?

var myObject = {
  prop1: '123',
  prop2: '234',
  'prop 3': '345',
};

var prop2 = '456';
myObject['prop2'] = '456';
myObject[prop2] = '678';

console.log(myObject[prop2]); // 678
console.log(myObject.prop2);  // 456
