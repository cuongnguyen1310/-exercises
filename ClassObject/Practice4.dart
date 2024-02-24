class Device {
  final String name;
  final String systemName;
  final int deviceId;
  final Manufacturer manufacturer;

  Device({
    required this.name,
    required this.systemName,
    required this.manufacturer,
  }) : this.deviceId = DateTime.now().microsecondsSinceEpoch;

  void printInfo() {
    print(
        "name: $name, deviceId: $deviceId, systemName: $systemName, manufacturer: ${manufacturer.getInfo()}");
  }
}

class Manufacturer {
  final String name;
  final int manufacturerId;

  Manufacturer({required this.name})
      : this.manufacturerId = DateTime.now().microsecondsSinceEpoch;

  Map getInfo() {
    return {
      "name": this.name,
      "manufacturerId": this.manufacturerId,
    };
  }
}

void main(List<String> args) {
  var manufacturer1 = Manufacturer(name: "Apple");
  var device1 = Device(
    name: "IPhone 7 plus",
    systemName: "IOS",
    manufacturer: manufacturer1,
  );
  device1.printInfo();
  var device2 = Device(
    name: "IPhone 8",
    systemName: "IOS",
    manufacturer: manufacturer1,
  );
  device2.printInfo();
}
