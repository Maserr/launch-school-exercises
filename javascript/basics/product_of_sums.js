// The following program returns the product of the totals of two arrays of
// numbers. Review the code. Is it producing the expected behavior?
// Why or why not?

function productOfSums(array1, array2) {
  var result;

  result = total(array1) * total(array2);

  return result;
}

function total(numbers) {
  var sum;  // should be: var sum = 0;

  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  sum;  // should be: return sum;
}

// It won't produce the expected result. It returns Nan.
//
// The function `total` is not returning explictly, therefore it returns
// implicitly the value `undefined`.
//
// It also lack of assignment a value to the local variable `sum`.
