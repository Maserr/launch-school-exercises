// Implement a function that converts the DOM, starting from the body, to
// nested arrays. Each element in the DOM is represented as ["PARENT_TAG_NAME",
// [children]] where children are elements as well and as such follow the same
// format. When an element has no children, it's represented as
// ["PARENT_TAG_NAME", []]. For instance, if the HTML doesn't have any elements
// inside the body, the result array would be: ["BODY", []]. Likewise, if the
// HTML only has a div element as it's content, the result array would be:
// ["BODY", [["div", []]]].

function nodesToArray() {
  return traverse(document.body);
}

function traverse(node) {
  var descendants = [];

  for (var i = 0; i < node.children.length; i += 1) {
    descendants.push(traverse(node.children[i]));
  }

  return [node.tagName, descendants];
}
