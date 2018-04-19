// Implement a function, sliceTree, that is "similar" to the
// Array.prototype.slice method, but this time for a DOM tree. The sliceTree
// function takes two arguments: the start index which is the parent node's id
// attribute and, the end index which is the inner most child node's id
// attribute. The function returns an array of tagNames. Take note of the
// following when implementing the sliceTree function:
//
// It's similar to slice but different in the sense that slice isn't inclusive
// on the right hand side.
//
// The end index doesn't have to be the id of the "inner most" child node as
// some of the examples suggest.
//
// Only consider element nodes.
//
// Only the child elements of the body element are sliceable.
//
// If the id attribute of the start or end index is not in the DOM,
// return undefined
//
// If the slice is not feasible — there's no path connecting the element at the
// starting index to the ending index — return undefined

function sliceTree(start, end) {
  var startElement = document.getElementById(String(start));
  var endElement = document.getElementById(String(end));
  var slicedTree = [];
  var currentElement;

  if (!startElement || !endElement || end < start) {
    return undefined;
  }

  do {
    currentElement = endElement;
    slicedTree.unshift(currentElement.tagName);
    endElement = endElement.parentElement
  } while (currentElement.id !== String(start) && endElement !== document.body);

  if (endElement === document.body && currentElement.id !== String(start)) {
    return undefined;
  } else {
    return slicedTree;
  }
}

sliceTree(1, 4);   // ["ARTICLE", "HEADER", "SPAN", "A"]
sliceTree(1, 76);  // undefined
sliceTree(2, 5)    // undefined
sliceTree(5, 4);   // undefined
sliceTree(1, 23);  // ["ARTICLE", "FOOTER"]
sliceTree(1, 22);  // ["ARTICLE", "MAIN", "SECTION", "P", "SPAN", "STRONG", "A"]
sliceTree(11, 19); // ["SECTION", "P", "SPAN", "STRONG", "A"]
