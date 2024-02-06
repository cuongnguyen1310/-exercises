import 'dart:ffi';

void variableInDart() {
  // nullable type
  String? name;
  print("name = $name"); // can use before assign value, default value is null
  name = "Nguyen Van A";
  print("name = $name");
  int? age;
  print("age = $age");
  age = 23;
  print("age = $age");
  age = 18;
  print("age = $age");

  // Non-nullable type
  String firstName;
  firstName = "Nguyen";
  print("firstName = $firstName"); // cannot use before assign value

  // var type
  var city;
  print("city = $city"); // default value is null if no value has been assigned
  print("data type of city = ${city.runtimeType}");
  city = "Hai Phong";
  print("city = $city");
  print("data type of city = ${city.runtimeType}");
  city = null;
  print("city  = $city");
  city = 1;
  print("city = $city");
  print("data type of city = ${city.runtimeType}");
  city = 12.32;
  print("city = $city");
  print("data type of city = ${city.runtimeType}");

  // dynamic type
  dynamic district;
  print("district = $district");
  print("data type of district = ${district.runtimeType}");
  district = "Le Chan";
  print("district = $district");
  print("data type of district = ${district.runtimeType}");
  district = 12;
  print("district = $district");
  print("data type of district = ${district.runtimeType}");

  // late variable
  late String lateVariable;
  lateVariable =
      "late variable"; // late variable must be set value before it's used, late variable is lazy init
  print("lateVariable = $lateVariable");
  lateVariable = "set value again";
  print(
      "lateVariable = $lateVariable"); // late variable allow set value after it's assigned

  // const variable
  const monday = "Monday"; // cannot change value of const variable.
  print("monday = $monday");

  // final variable
  final nickName; // final variable only set once.
  nickName = "Asher";
  print("finalVariable = $nickName");

  // static variable
  Student.name = "Nguyen Van A";
  print("Student.name = ${Student.name}");
}

// static variable
class Student {
  static var name;
}

int Factorial(i) {
  if (i == 1) {
    return i;
  }
  return i * Factorial(i - 1);
}

void calculateFactorial(int number) {
  final result = Factorial(number);
  print("Factorial of number = $number is $result");
}

String convertInt2String(int number) {
  return number.toString();
}

int? convertString2Int(String strNumber) {
  return int.tryParse(strNumber);
}

String convertDouble2String(double number) {
  return number.toString();
}

double? convertString2Double(String strNumber) {
  return double.tryParse(strNumber);
}

int convertDouble2Int(double number) {
  return number.toInt();
}

double convertInt2Double(int number) {
  return number.toDouble();
}

void testConvertFunctions() {
  int intAge = 24;
  String ageStr = convertInt2String(intAge);
  print(ageStr);
  double ageDouble = convertInt2Double(intAge);
  print(ageDouble);
  int? fromStrAgeToIntAge = convertString2Int(ageStr);
  print(fromStrAgeToIntAge);
  int fromDoubleToIntAge = convertDouble2Int(ageDouble);
  print(fromDoubleToIntAge);
}

void main(List<String> args) {
  variableInDart();
  calculateFactorial(6);
  testConvertFunctions();
}
