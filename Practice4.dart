extension intExt on int {
  add(int number) {
    if (number <= 0) {
      throw Exception("number must be greater than zero");
    }
    return this + number;
  }

  subtract(int number) {
    if (number <= 0) {
      throw Exception("number must be greater than zero");
    }
    return this - number;
  }

  divide(int number) {
    if (number <= 0) {
      throw Exception("number must be greater than zero");
    }
    return this ~/ number;
  }

  multiple(int number) {
    if (number <= 0) {
      throw Exception("number must be greater than zero");
    }
    return this * number;
  }
}

void main(List<String> args) {
  int a = 10;
  print("add method: ${a.add(2)}"); // add method: 12
  print("subtract method: ${a.subtract(2)}"); // subtract method: 8
  print("divide method: ${a.divide(2)}"); // divide method: 5
  print("multiple method: ${a.multiple(2)}"); // multiple method: 20
  print("multiple method: ${a.multiple(0)}");
}
