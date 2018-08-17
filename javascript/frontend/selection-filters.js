// Given the HTML below, write JS code that updates the options on one dropdown
// every time the selection in the other dropdown changes. For instance, when
// the user chooses an option other than the one currently displayed in the left
// dropdown (i.e., "Classifications"), then the options on the dropdown to the
// right of it should change accordingly. Use the lookup table that follows for
// what the available options should be given a selection change in one of the
// dropdowns.

// SELECTION	   ANIMALS OPTIONS
// Vertebrate	   Bear, Turtle , Whale, Salmon, Ostrich
// Warm-blooded	 Bear, Whale, Ostrich
// Cold-blooded	 Salmon, Turtle
// Mammal	       Bear, Whale
// Bird	         Ostrich

// SELECTION	   ANIMAL CLASSIFICATIONS OPTIONS
// Bear	         Vertebrate, Warm-blooded, Mammal
// Turtle	       Vertebrate, Cold-blooded
// Whale	       Vertebrate, Warm-blooded, Mammal
// Salmon	       Vertebrate, Cold-blooded
// Ostrich	     Vertebrate, Warm-blooded, Bird

// Correspondingly, clicking on the "clear" button resets to the default values
// in the provided HTML.

var classifications = {
  Vertebrate: ['Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
  'Warm-blooded': ['Bear', 'Whale', 'Ostrich'],
  'Cold-blooded': ['Salmon', 'Turtle'],
  Mammal: ['Bear', 'Whale'],
  Bird: ['Ostrich'],
};

var animals = {
  Bear: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Turtle: ['Vertebrate', 'Cold-blooded'],
  Whale: ['Vertebrate', 'Warm-blooded', 'Mammal'],
  Salmon: ['Vertebrate', 'Cold-blooded'],
  Ostrich: ['Vertebrate', 'Warm-blooded', 'Bird'],
};

document.addEventListener('DOMContentLoaded', function() {
  var classificationsSelect = document.querySelector('#animal-classifications');
  var animalsSelect = document.querySelector('#animals');
  var clearButton = document.querySelector('#clear');

  function setOptions(select, optionsArray) {
    select.options.length = 0;

    for (var i = 0; i < optionsArray.length; i++) {
      var option = document.createElement('option');

      option.value = optionsArray[i];
      option.text = optionsArray[i];

      select.add(option);
    }
  }

  classificationsSelect.addEventListener('change', function(event) {
    var optionSelected = event.target.value;
    var options = classifications[optionSelected];

    setOptions(animalsSelect, options);
  });

  animalsSelect.addEventListener('change', function(event) {
    var optionSelected = event.target.value;
    var options = animals[optionSelected];

    setOptions(classificationsSelect, options);
  });

  clear.addEventListener('click', function(event) {
    event.preventDefault();

    var classificationsOptions = ['Classifications'].concat(Object.keys(classifications));
    var animalsOptions = ['Animals'].concat(Object.keys(animals));

    setOptions(classificationsSelect, classificationsOptions);
    setOptions(animalsSelect, animalsOptions);
  });
});
