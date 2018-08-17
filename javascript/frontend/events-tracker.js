// Implement a function that tracks user events that occur on web page by
// wrapping the callback function argument passed to the addEventListener method
// so that every time the listener is fired the event is logged in a tracker
// object.

// Assume that the elements, with the respective ids, are clicked in the
// following order: div#blue, div#red, div#yellow, and div#green.

// > tracker.list().length;
// = 4
// > tracker.elements();
// = [div#blue, div#red, div#yellow, div#green]
// > tracker.elements()[0] === document.querySelector('#blue');
// = true
// > tracker.elements()[3] === document.querySelector('#green');
// = true
// > tracker.clear();
// = 0
// > tracker.list();
// = []
// > tracker.list()[0] = 'abc'
// > tracker.list().length;
// = 0

var divRed = document.querySelector('#red');
var divBlue = document.querySelector('#blue');
var divOrange = document.querySelector('#orange');
var divGreen = document.querySelector('#green');

var tracker = (function() {
  var events = [];
  return {
    list: function() {
      return events.slice();
    },
    elements: function() {
      return this.list().map(function(event) {
        return event.target;
      });
    },
    add: function(event) {
      events.push(event);
    },
    clear: function() {
      events.length = 0;
      return events.length;
    },
  };
})();

function track(callback) {
  return function(event) {
    if (!event.tracked) {
      tracker.add(event);
      event.tracked = true;
    }

    callback(event);
  };
}

divRed.addEventListener('click', track(function() {
  document.body.style.background = 'red';
}));

divBlue.addEventListener('click', track(function() {
  event.stopPropagation();
  document.body.style.background = 'blue';
}));

divOrange.addEventListener('click', track(function() {
  document.body.style.background = 'orange';
}));

divGreen.addEventListener('click', track(function() {
  document.body.style.background = 'green';
}));
