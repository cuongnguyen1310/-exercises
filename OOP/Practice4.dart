abstract class Vehicle {
  final String name;

  Vehicle({required this.name});
  void startEngine() {
    print("Start engine");
  }

  void stopEngine() {
    print("Stop engine");
  }

  void accelerate();
  void brake();
}

class Car extends Vehicle {
  Car({required super.name});

  @override
  void accelerate() {
    print("Car accelerate");
  }

  @override
  void brake() {
    print("Car brake");
  }
}

class MotorBike extends Vehicle {
  MotorBike({required super.name});

  @override
  void accelerate() {
    print("Motorbike accelerate");
  }

  @override
  void brake() {
    print("Motorbike brake");
  }
}

void main(List<String> args) {
  var car1 = Car(name: "car");
  car1.startEngine();
  car1.accelerate();
  car1.brake();
  car1.stopEngine();
  print("==========================");
  var motorbike1 = MotorBike(name: "motorbike");
  motorbike1.startEngine();
  motorbike1.accelerate();
  motorbike1.brake();
  motorbike1.stopEngine();
}
