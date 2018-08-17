// Implement a function that delegates events on descendant (inner) elements
// that match a selector to a parent element. Assume that all event handlers are
// listening during the bubbling phase.

// Possible elements for used with the scenarios
var element1 = document.querySelector('nav');
var element2 = document.querySelector('main h1');
var element3 = document.querySelector('main');

// Possible callbacks for used with the scenarios
var callback = function(event) {
  alert('Target: ' + event.target.tagName + "\nCurrent Target: " + event.currentTarget.tagName);
};

function delegateEvent(parentElement, selector, eventType, callback) {
  if (parentElement && parentElement instanceof Element) {
    return !parentElement.addEventListener(eventType, function(event) {
      var validTargets = Array.prototype.slice.call(parentElement.querySelectorAll(selector));
      if (validTargets.includes(event.target)) {
        callback(event);
      }
    });
  }
}
