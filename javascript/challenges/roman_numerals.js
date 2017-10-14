// The Romans were a clever bunch. They conquered most of Europe and ruled it
// for hundreds of years. They invented concrete and straight roads and even
// bikinis. One thing they never discovered though was the number zero. This
// made writing and dating extensive histories of their exploits slightly more
// challenging, but the system of numbers they came up with is still in use
// today. For example the BBC uses Roman numerals to date their programmes.
//
// The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice these
// letters have lots of straight lines and are hence easy to hack into stone
// tablets).
//
//  1  => I
// 10  => X
//  7  => VII
//
// There is no need to be able to convert numbers larger than about 3000. (The
// Romans themselves didn't tend to go any higher)
//
// Wikipedia says: Modern Roman numerals ... are written by expressing each
// digit separately starting with the left most digit and skipping any digit
// with a value of zero.
//
// To see this in practice, consider the example of 1990. In Roman numerals
// 1990 is MCMXC:
//
// 1000 = M
// 900  = CM
// 90   = XC
//
// 2008 is written as MMVIII:
//
// 2000 = MM
// 8    = VIII
//
// See also: http://www.novaroma.org/via_romana/numbers.html

function toRoman(decimalNumber) {
  var ROMAN_NUMERALS = {
     M: 1000,
    CM: 900,
     D: 500,
    CD: 400,
     C: 100,
    XC: 90,
     L: 50,
    XL: 40,
     X: 10,
    IX: 9,
     V: 5,
    IV: 4,
     I: 1,
  }

  var romanNumber = '';
  var romanSymbol, romanValue;
  var times;

  for (romanSymbol in ROMAN_NUMERALS) {
    romanValue = ROMAN_NUMERALS[romanSymbol];

    times = Math.trunc(decimalNumber / romanValue);
    decimalNumber = decimalNumber % romanValue;

    romanNumber += romanSymbol.repeat(times);
  }

  return romanNumber;
}

toRoman(1);     // 'I'
toRoman(2);     // 'II'
toRoman(3);     // 'III'
toRoman(4);     // 'IV'
toRoman(5);     // 'V'
toRoman(6);     // 'VI'
toRoman(9);     // 'IX'
toRoman(27);    // 'XXVII'
toRoman(48);    // 'XLVIII'
toRoman(59);    // 'LIX'
toRoman(93);    // 'XCIII'
toRoman(141);   // 'CXLI'
toRoman(163);   // 'CLXIII'
toRoman(402);   // 'CDII'
toRoman(575);   // 'DLXXV'
toRoman(911);   // 'CMXI'
toRoman(1024);  // 'MXXIV'
toRoman(3000);  // 'MMM'
