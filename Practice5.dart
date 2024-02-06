List<int> initArray() {
  List<int> arr = [];
  for (var i = 0; i <= 100; ++i) {
    arr.add(i);
  }
  return arr;
}

void oddNumber(List<int> arr, int index) {
  if (arr[index] % 2 != 0) {
    print("Odd number: ${arr[index]}");
  }
  if (index == arr.length - 1) {
    return;
  }
  oddNumber(arr, index + 1);
}

void evenNumber(List<int> arr, int index) {
  if (arr[index] % 2 == 0) {
    print("Even number: ${arr[index]}");
  }
  if (index == arr.length - 1) {
    return;
  }
  evenNumber(arr, index + 1);
}

void checkOddOrEvenNumber(int number) {
  if (number % 2 == 0) {
    print("number $number is even number");
    return;
  }
  if (number % 2 != 0) {
    print("number $number is odd number");
    return;
  }
}

void main(List<String> args) {
  List<int> arr = initArray();
  oddNumber(arr, 0);
  evenNumber(arr, 0);
  checkOddOrEvenNumber(0);
}
