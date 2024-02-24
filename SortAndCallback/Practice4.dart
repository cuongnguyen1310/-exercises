import 'dart:math';

final numbers = List.generate(10, (index) {
  final random = Random();
  return random.nextInt(100);
});

List swap(first, last) {
  return [last, first];
}

// Output: sorted in ascending order
bubbleSort(list) {
  for (int i = 0; i < list.length; ++i) {
    for (int j = i; j < list.length; ++j) {
      if (list[i] > list[j]) {
        var temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
}

void main(List<String> args) {
  print(numbers);
  bubbleSort(numbers);
  print(numbers);
}
