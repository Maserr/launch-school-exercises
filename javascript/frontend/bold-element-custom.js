// Implement a function that makes an element bold and allows the user of the
// function to optionally do something else with it.

function makeBold(domElement, callback) {
  domElement.style.fontWeight = 'bold';

  if (callback && typeof callback === 'function') {
    callback(domElement);
  }
}
