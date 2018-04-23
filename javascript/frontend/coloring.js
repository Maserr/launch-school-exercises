// Write a function that colors a specific generation of the DOM tree. A
// generation is a set of elements that are on the same level of indentation.
// You can assume that only positive integers will be provided as arguments.

// https://dbdwvr6p7sskw.cloudfront.net/js-exercises/dom_querying_manipulation/coloring.png

function colorGeneration(targetGeneration) {
  if (targetGeneration < 0) {
    throw new Error('Argument should be a positive number');
  }

  var generation = 0;
  var parents = [document.body];
  var elements;

  while (generation < targetGeneration) {
    generation += 1;
    elements = getAllChildrenOf(parents);
    parents = elements;
  }

  if (elements) {
    color(elements);
  }
}

function color(elements) {
  elements.forEach(function(element) {
    element.classList.add('generation-color');
  });
}

function getAllChildrenOf(parents) {
  var parentsArray = [].slice.call(parents);
  return parentsArray.map(function(element) {
    return [].slice.call(element.children);
  }).reduce(function(collection, children) {
    return collection.concat(children);
  }, []);
}
