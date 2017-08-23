// The intention of the program below is to output a paragraph. Copy and paste
// the program into a JavaScript console (i.e from the Chrome Developer Tools).
// Run the program. Is the output what you expected? Are there bugs/errors?

var paragraph = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed \
                ligula at risus vulputate faucibus. Aliquam venenatis nibh ut justo dignissim \
                dignissim. Proin dictum purus mollis diam auctor sollicitudin. Ut in bibendum \
                ligula. Suspendisse quam ante, dictum aliquam tristique id, porttitor pulvinar \
                diam. Maecenas blandit aliquet ipsum. Integer vitae sapien sed nulla rutrum \
                hendrerit ac a urna. Interdum et malesuada fames ac ante ipsum primis in faucibus.';

console.log(paragraph);

// ANSWER: Running the code above will result in a string with extra whitespaces
// between lines.
//
// That happens because it considers the whole string to be continous. It takes
// in count the spaces at the beginning of each line as part of the string.
//
// We have two possible solutions:
//
// 1. remove the extra left whitespaces in each line
paragraph = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed \
ligula at risus vulputate faucibus. Aliquam venenatis nibh ut justo dignissim \
dignissim. Proin dictum purus mollis diam auctor sollicitudin. Ut in bibendum \
ligula. Suspendisse quam ante, dictum aliquam tristique id, porttitor pulvinar \
diam. Maecenas blandit aliquet ipsum. Integer vitae sapien sed nulla rutrum \
hendrerit ac a urna. Interdum et malesuada fames ac ante ipsum primis in faucibus.';
//
// 2. write each line as string and concatenate them using the plus `+` operator
paragraph = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sed ' +
            'ligula at risus vulputate faucibus. Aliquam venenatis nibh ut justo dignissim ' +
            'dignissim. Proin dictum purus mollis diam auctor sollicitudin. Ut in bibendum ' +
            'ligula. Suspendisse quam ante, dictum aliquam tristique id, porttitor pulvinar ' +
            'diam. Maecenas blandit aliquet ipsum. Integer vitae sapien sed nulla rutrum ' +
            'hendrerit ac a urna. Interdum et malesuada fames ac ante ipsum primis in faucibus.';
