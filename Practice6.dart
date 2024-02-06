bool isPrimeNumber(int number, List<int> primes) {
  for (final prime in primes) {
    if (number % prime == 0) {
      return false;
    }
  }
  for (int num = primes[primes.length - 1]; num < number; ++num) {
    if (number % num == 0) {
      return false;
    }
  }
  return true;
}

void primeNumbers(int number, int currentNumber, List<int> primes) {
  if (currentNumber > number) {
    print("Prime numbers: $primes");
    return;
  }
  if (currentNumber <= 2) {
    primes.add(2);
    currentNumber = 2;
  }
  if (isPrimeNumber(currentNumber, primes)) {
    primes.add(currentNumber);
  }
  primeNumbers(number, currentNumber + 1, primes);
}

void main(List<String> args) {
  primeNumbers(100, 1, []);
}
