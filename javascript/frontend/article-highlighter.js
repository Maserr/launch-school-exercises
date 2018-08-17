// When the user clicks on a "Nav" link (Article 1 to 4) the browser scrolls to
// the particular article element and adds the highlight class to it. If another
// element has highlight as part of its class attribute, the browser removes it.

// When a user clicks on an article element or any of its child elements, the
// browser adds the highlight class to it. If another element has highlight as
// part of its class attribute, the browser removes it.

// When the user clicks anywhere outside of a specific article element and its
// child elements, the browers adds the highlight class to the main element
// containing all four (4) articles. If another element has highlight as part of
// its class attribute, the browser removes it.

document.addEventListener('DOMContentLoaded', function() {
  var main = document.querySelector('main');
  var anchors = [].slice.call(document.querySelectorAll('header a'));
  var articles = [].slice.call(document.querySelectorAll('main > article'));

  function removeHighlight() {
    var highlighted = document.querySelector('.highlight');
    if (highlighted) {
      highlighted.classList.remove('highlight');
    }
  }

  document.addEventListener('click', function(event) {
    removeHighlight();
    main.classList.add('highlight');
  });

  anchors.forEach(function(anchor) {
    anchor.addEventListener('click', function(event) {
      event.stopPropagation();
      removeHighlight();
      main.querySelector(String(anchor.hash)).classList.add('highlight');
    });
  });

  articles.forEach(function(article) {
    article.addEventListener('click', function(event) {
      event.stopPropagation();
      removeHighlight();
      article.classList.add('highlight');
    });
  });
});
