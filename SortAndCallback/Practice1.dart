import 'dart:io';

timerPeriodic({
  required int second,
  required Function(int) callback,
}) {
  int secondNumber = 0;
  while (true) {
    callback(secondNumber);
    sleep(Duration(seconds: second));
    ++secondNumber;
  }
}

void main(List<String> args) {
  timerPeriodic(
    second: 1,
    callback: (secondNumber) {
      print("Second: $secondNumber");
    },
  );
}
