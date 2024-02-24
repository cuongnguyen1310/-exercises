List swap(List list, int firstIndex, int secondIndex) {
  return [list[secondIndex], list[firstIndex]];
}

void main(List<String> args) {
  var list = ["Hello", 23, 11.1, false, null];
  print("Before list: ${list}");
  int firstIndex = 0;
  int secondIndex = 1;
  var results = swap(list, firstIndex, secondIndex);
  list[firstIndex] = results[firstIndex];
  list[secondIndex] = results[secondIndex];
  print("After list: ${list}");
}
