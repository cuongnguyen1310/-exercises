// Output: “Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)”

String getCapitalizedString(String inputString) {
  return inputString[0].toUpperCase() + inputString.substring(1);
}

void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];
  print([
    getCapitalizedString(arr[3]), // Đây
    arr[5], // là
    arr[4], // kết
    arr[arr.length - 3][1], // quả
    arr[arr.length - 4][true], // buổi
    arr[arr.length - 4][1], // học
    arr[arr.length - 3][0], // thứ
    arr[1], // 2
    arr[arr.length - 3][2], // về
    getCapitalizedString(arr[arr.length - 1]["flutter"]) +
        arr[arr.length - 4][10.2], // Dart:
    arr[arr.length - 4][false]
        .substring(0, arr[arr.length - 4][false].length - 1)
        .toUpperCase(), // DART BASIC
    arr[arr.length - 2] // (phần 1)
  ].join(" "));
}
