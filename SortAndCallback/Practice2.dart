textFiled(
  String text, {
  Function(String)? onChanged,
}) {
  if (onChanged != null) {
    final result = 'Hello $text';
    onChanged(result);
  }
}

void main(List<String> args) {
  textFiled("Cuong", onChanged: (input) {
    print("Input onChanged: $input");
  });
}
