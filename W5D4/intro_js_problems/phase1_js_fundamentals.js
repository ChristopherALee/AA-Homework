// Mystery Scoping with `var`, `let`, `const`

function mysteryScoping1() {
  var x = 'out of block';

  if (true) {
    var x = 'in block';
    console.log(x);
  }

  console.log(x);
}
// => 'in block'
// => 'in block'

function mysteryScoping2() {
  const x = 'out of block';

  if (true) {
    const x = 'in block';
    console.log(x);
  }

  console.log(x)
}
// => 'in block'
// => 'out of block'

function mysteryScoping3() {
  const x = 'out of block';

  if (true) {
    var x = 'in block';
    console.log(x);
  }

  console.log(x);
}
// throws an error because const x is defined; var x tries to change

function mysteryScoping4() {
  let x = 'out of block';

  if (true) {
    let x = 'in block';
    console.log(x);
  }

  console.log(x);
}
// => 'in block'
// => 'out of block'

function mysteryScoping5() {
  let x = 'out of block';

  if (true) {
    let x = 'in block';
    console.log(x);
  }

  let x = 'out of block again';
  console.log(x);
}
// error: 'x' has already been declared



// madLib
// Write a function that takes three strings - a verb, an adjective, and a noun - uppercases and interpolates them into the sentence "We shall VERB the ADJECTIVE NOUN". Use ES6 template literals.

function madLib(verb, adjective, noun) {
  console.log(`We shall ${verb} the ${adjective} ${noun}.`);
}

// isSubstring
function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}
