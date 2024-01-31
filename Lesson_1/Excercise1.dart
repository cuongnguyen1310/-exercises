// Input " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)..."
// Output `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
String getCapitalizedString(String inputString) {
  return inputString[0].toUpperCase() + inputString.substring(1);
}

String getCapitalizedStringAnotherWay(String s) =>
    s[0].toUpperCase() + s.substring(1);

void main() {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  var subString = str.substring(1, str.length - 3);
  var capitalizedString = getCapitalizedString(subString);
  var resultString = capitalizedString
      .replaceAll("dart basics", "DART BASIC")
      .replaceAll("dart", "Dart");
  print(resultString);
}
