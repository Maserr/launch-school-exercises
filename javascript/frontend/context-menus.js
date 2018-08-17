var mainArea = document.querySelector('main');
var subArea = document.querySelector('#sub');

mainArea.addEventListener('contextmenu', function(event) {
  event.preventDefault();
  alert('Main Area');
});

subArea.addEventListener('contextmenu', function(event) {
  event.preventDefault();
  event.stopPropagation();
  alert('Sub Area');
});
