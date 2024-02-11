import 'dart:math';

List<int> initArr(int numberElement) {
  List<int> arr = [];
  for (int i = 0; i < numberElement; ++i) {
    arr.add(Random().nextInt(numberElement));
  }
  return arr;
}

void addTopKElementFirst({
  required List<int> arr,
  required int topK,
  required List<int> topMax,
  required List<int> topMin,
  required int i,
}) {
  for (int j = 0; j < topMax.length; ++j) {
    if (arr[i] > topMax[j]) {
      int k = topMax.length - 1;
      while (k >= j) {
        if (k == (topMax.length - 1)) topMax.add(topMax[k]);
        topMax[k + 1] = topMax[k];
        --k;
      }
      topMax[k + 1] = arr[i];
      break;
    }
    if (j == (topMax.length - 1)) {
      topMax.add(arr[i]);
      break;
    }
  }
  for (int j = 0; j < topMin.length; ++j) {
    if (arr[i] < topMin[j]) {
      int k = topMin.length - 1;
      while (k >= j) {
        if (k == (topMin.length - 1)) topMin.add(topMin[k]);
        topMin[k + 1] = topMin[k];
        --k;
      }
      topMin[k + 1] = arr[i];
      break;
    }
    if (j == (topMin.length - 1)) {
      topMin.add(arr[i]);
      break;
    }
  }
}

void addTopKElementAfter({
  required List<int> arr,
  required int topK,
  required List<int> topMax,
  required List<int> topMin,
  required int i,
}) {
  for (int j = 0; j < topMax.length; ++j) {
    if (arr[i] > topMax[j]) {
      int k = topMax.length - 2;
      while (k >= j) {
        topMax[k + 1] = topMax[k];
        --k;
      }
      topMax[k + 1] = arr[i];
      break;
    }
  }
  for (int j = 0; j < topMin.length; ++j) {
    if (arr[i] < topMin[j]) {
      int k = topMin.length - 2;
      while (k >= j) {
        topMin[k + 1] = topMin[k];
        --k;
      }
      topMin[k + 1] = arr[i];
      break;
    }
  }
}

void getTopKElementFirst({
  required List<int> arr,
  required int topK,
  required List<int> topMax,
  required List<int> topMin,
}) {
  int i = 0;
  while (i <= (arr.length - 1) && (i < topK)) {
    if (i == 0) {
      topMax.add(arr[0]);
      topMin.add(arr[0]);
      ++i;
      continue;
    }
    addTopKElementFirst(
        arr: arr, topK: topK, topMax: topMax, topMin: topMin, i: i);
    ++i;
  }
}

void getTopKElementAfter({
  required List<int> arr,
  required int topK,
  required List<int> topMax,
  required List<int> topMin,
}) {
  int i = topK;
  while (i <= (arr.length - 1)) {
    addTopKElementAfter(
        arr: arr, topK: topK, topMax: topMax, topMin: topMin, i: i);
    ++i;
  }
}

void statistic(List<int> arr, int topK) {
  List<int> topMax = [];
  List<int> topMin = [];
  getTopKElementFirst(arr: arr, topK: topK, topMax: topMax, topMin: topMin);
  getTopKElementAfter(arr: arr, topK: topK, topMax: topMax, topMin: topMin);
  String resultGTNN = "";
  String resultGTLN = "";
  for (int i = 0; i < topK; ++i) {
    resultGTNN += "GTNN Top ${i + 1}: ${topMin[i]}; ";
    resultGTLN += "GTLN Top ${i + 1}: ${topMax[i]}; ";
  }
  print(resultGTNN);
  print(resultGTLN);
}

void main(List<String> args) {
  List<int> arr = initArr(20);
  print("arr = $arr");
  statistic(arr, 3);
}
