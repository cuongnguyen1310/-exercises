void verticalMultiplicationTable() {
  for (int i = 1; i <= 9; ++i) {
    for (int j = 1; j <= 9; ++j) {
      print("$i x $j = ${i * j}");
    }
    print("\n\n");
  }
}

void horizontalMultiplicationTable() {
  List line = [];
  for (int i = 1; i <= 9; ++i) {
    line.add("--- $i --- ");
  }
  print(line.join("     "));
  Map sum = {};
  for (int i = 1; i <= 9; ++i) {
    List line = [];
    for (int j = 1; j <= 9; ++j) {
      sum[j] = sum[j] == null ? 0 : sum[j];
      sum[j] += i * j;
      if ((i * j) < 10) {
        line.add("$j * $i = ${j * i} ");
        continue;
      }
      line.add("$j * $i = ${j * i}");
    }
    print(line.join("     "));
  }
  List sumLine = [];
  for (int i = 1; i <= 9; ++i) {
    if (sum[i] >= 100) {
      sumLine.add(" ----- ${sum[i]}");
      continue;
    }
    sumLine.add(" ----- ${sum[i]} ");
  }
  print(sumLine.join("     "));
}

void main(List<String> args) {
  verticalMultiplicationTable();
  print("========================================");
  horizontalMultiplicationTable();
}
