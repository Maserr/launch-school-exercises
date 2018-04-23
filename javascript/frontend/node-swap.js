// Write a function that takes two element ids as arguments and swaps the
// positions of the elements represented by the ids. To put the focus on the
// node swapping functionality, you can assume that nodes will have a value for
// the id attribute and two arguments will always be provided.

function nodeSwap(node1Id, node2Id) {
  var node1 = document.getElementById(node1Id);
  var node2 = document.getElementById(node2Id);

  if (isInvalidSwap(node1, node2)) {
    return undefined;
  }

  var node2Parent = node2.parentNode;
  var node2Sibling = node2.nextSibling;

  node1.parentNode.insertBefore(node2, node1);
  node2Parent.insertBefore(node1, node2Sibling);

  return true;
}

function isInvalidSwap(node1, node2) {
  return !(node1 && node2) || (node1.contains(node2) || node2.contains(node1));
}
