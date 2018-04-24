// Implement a function that converts a nested array of nodeNames (see Nodes to
// Array exercise for examples) into an actual DOM. Go over the sample code and
// expected output below as a guide for what you will implement.

function arrayToNodes(nodes) {
  var parent = document.createElement(nodes[0]);
  var children = nodes[1];

  for (var i = 0; i < children.length; i++) {
    parent.appendChild(arrayToNodes(children[i]));
  }

  return parent;
}

var nodes = ["BODY",[["HEADER",[]],["MAIN",[]],["FOOTER",[]]]];
// arrayToNodes(nodes);
