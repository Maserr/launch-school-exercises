// Go over the two HTML snippets.
// How many nodes will the resulting DOM tree have?

function walk(node, callback) {
  callback(node);
  var i;
  for (i = 0; i < node.childNodes.length; i++) {
    walk(node.childNodes[i], callback);
  }
}

var nodeCount = 0;

walk(document, function(){
  nodeCount++;
});

console.log(nodeCount);
