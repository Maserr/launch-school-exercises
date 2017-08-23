// We have a function that can compute the amount total for an invoice with four
// line items. How can you refactor the function so that it'll work with
// invoices with any number of line items?
//
// function invoiceTotal(amount1, amount2, amount3, amount4) {
//   return amount1 + amount2 + amount3 + amount4;
// }
//
// invoiceTotal(20, 30, 40, 50);         // works
// invoiceTotal(20, 30, 40, 50, 40, 40); // doesn't work; how can you make it work?
//

function invoiceTotal() {
  var total = 0;

  for (var i = 0; i < arguments.length; i += 1) {
    total += arguments[i];
  }

  return total;
}

invoiceTotal(20, 30, 40, 50);         // 140
invoiceTotal(20, 30, 40, 50, 40, 40); // 220
