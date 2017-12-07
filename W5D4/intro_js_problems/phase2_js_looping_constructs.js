// fizzBuzz
function fizzBuzz(array) {
  var result = [];

  array.forEach(el => {
    if ((el % 3 === 0) || (el % 5 === 0)) {
      result.push(el);
    }
  });

  return result;
}

// isPrime
function isPrime(number) {
  if (number < 2) { return false; }

  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }

  return true;
}

// sumOfNPrimes
function sumOfNPrimes(n) {
  var sum = 0;
  var prime_count = 0;
  var i = 2;

  while (prime_count < n) {
    if (is_prime(i)) {
      sum += i;
      prime_count++
    }

    i++
  }
  
  return sum;
}
