/**
 * The penultimate function returns the next to the last word in the String
 * passed to it. The function assumes that "words" are any sequence of non-blank
 * characters. It also assumes that the input String will always contain at
 * least two words. Currently, the solution provided does not match expected
 * result. Run the program, check the current result, identify the problem,
 * explain what the problem is, and provide a working solution.
 */

penultimate('last word')               // 'last'
penultimate('Launch School is great!') // 'is'

function penultimate(string) {
  return string.split(' ').slice(-2, -1)[0];
}
