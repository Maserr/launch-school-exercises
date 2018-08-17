// Study the JavaScript code below and the refactor it such that the same
// behavior is achieved but without the use of event.stopPropagation

// document.querySelector('html').addEventListener('click', function() {
//   document.querySelector('#container').style = 'display: none';
// });

// document.querySelector('#container').addEventListener('click', function(event) {
//   event.stopPropagation();
// });

document.querySelector('html').addEventListener('click', function(event) {
  var container = document.querySelector('#container');

  if (!container.contains(event.target)) {
    container.style = 'display: none';
  }
});
