void main(List<String> args) {
  var number = 0;
  buttonCount(number, (input) {
    ++input;
    number = input;
  });
  print("number: $number");
  buttonCount(number, (input) {
    ++input;
    number = input;
  });
  print("number: $number");
}

void buttonCount(int number, Function(int) onPressed) {
  onPressed(number);
}
