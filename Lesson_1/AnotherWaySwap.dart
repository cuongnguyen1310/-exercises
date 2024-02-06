(int, int) swapTest(int a, int b) {
  return (b, a);
}

void main(List<String> args) {
  var a = 1;
  var b = 2;
  print("before");
  print("a = $a, b = $b");
  (a, b) = swapTest(a, b);
  print("after");
  print("a = $a, b = $b");
}
