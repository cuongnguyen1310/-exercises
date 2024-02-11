import 'dart:math';

List<int> initArr(int numberElement) {
  List<int> arr = [];
  for (int i = 0; i < numberElement; ++i) {
    arr.add(Random().nextInt(numberElement));
  }
  return arr;
}

void calculateAverageValue(List<int> arr) {
  int total = 0;
  print("arr = $arr");
  for (final item in arr) {
    total += item;
  }
  print("Average value is ${total / arr.length}");
}

void findMaxAndMin(List<int> arr) {
  if (arr.length == 0) {
    print("This array don't have any min and max because it's an empty array");
    return;
  }
  int min = arr[0];
  int max = min;
  for (int i = 1; i < arr.length; ++i) {
    if (arr[i] > max) {
      max = arr[i];
      continue;
    }
    if (arr[i] < min) {
      min = arr[i];
    }
  }
  print("Min = $min, Max = $max");
}

void countFrequency(List<int> arr) {
  if (arr.length == 0) {
    print("This array don't have any min and max because it's an empty array");
    return;
  }
  Map<int, int> mapFrequency = {};
  for (int i = 0; i < arr.length; ++i) {
    if (mapFrequency[arr[i]] == null) {
      mapFrequency[arr[i]] = 1;
      continue;
    }
    mapFrequency[arr[i]] = mapFrequency[arr[i]]! + 1;
  }
  String result = "";
  for (var numberFrequency in mapFrequency.entries) {
    result += "${numberFrequency.key}: ${numberFrequency.value} lần; ";
  }
  print(result);
}

void countOddAndEvenNumber(List<int> arr) {
  Map<String, int> mapFrequency = {};
  const EVEN_NUMBER = "Số chẵn";
  const ODD_NUMBER = "Số lẻ";
  for (int i = 0; i < arr.length; ++i) {
    if (arr[i] % 2 == 0) {
      if (mapFrequency[EVEN_NUMBER] == null) {
        mapFrequency[EVEN_NUMBER] = 1;
        continue;
      }
      mapFrequency[EVEN_NUMBER] = mapFrequency[EVEN_NUMBER]! + 1;
      continue;
    }
    if (mapFrequency[ODD_NUMBER] == null) {
      mapFrequency[ODD_NUMBER] = 1;
      continue;
    }
    mapFrequency[ODD_NUMBER] = mapFrequency[ODD_NUMBER]! + 1;
  }
  String result = "";
  for (var numberFrequency in mapFrequency.entries) {
    result += "${numberFrequency.key}: ${numberFrequency.value} lần; ";
  }
  print(result);
}

void main(List<String> args) {
  List<int> arr = initArr(20);
  calculateAverageValue(arr);
  findMaxAndMin(arr);
  countFrequency(arr);
  countOddAndEvenNumber(arr);
}
