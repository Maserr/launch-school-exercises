// Write a JavaScript function that takes an element's id and returns the DOM
// tree of the element in a two dimensional array. The first subarray contains
// the element and its siblings, the second contains the parent of the element
// and its siblings, so on and so forth, all the way up to the "grandest"
// parent. Assume that the grandest parent is the element with an id of "1".

function domTreeTracer(id) {
  var currentElement = document.getElementById(String(id));
  var parentElement;
  var elements;
  var domTree = [];

  while (currentElement !== document.body) {
    parentElement = currentElement.parentElement;
    elements = getTagNames(parentElement.children);
    domTree.push(elements);
    currentElement = parentElement;
  }

  return domTree;
}

function getTagNames(htmlCollection) {
  var elementsArray = [].slice.call(htmlCollection);

  return elementsArray.map(function(element) {
    return element.tagName;
  });
}

domTreeTracer(1);  // [["ARTICLE"]]
domTreeTracer(2);  // [["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
domTreeTracer(22); // [["A"], ["STRONG"], ["SPAN", "SPAN"], ["P", "P"], ["SECTION", "SECTION"], ["HEADER", "MAIN", "FOOTER"], ["ARTICLE"]]
