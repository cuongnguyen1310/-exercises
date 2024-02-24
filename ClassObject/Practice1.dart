abstract class Animal {
  final int footNumber;
  final bool canRun;
  final bool canSwim;
  final bool canFly;

  const Animal({
    required this.footNumber,
    required this.canRun,
    required this.canSwim,
    required this.canFly,
  });
  void introduce();
  void wish();
  void can() {
    List cans = [];
    if (this.canRun) {
      cans.add("Run");
    }
    if (this.canSwim) {
      cans.add("Swim");
    }
    if (this.canFly) {
      cans.add("Fly");
    }
    print("I can: ${cans.join(", ")}");
  }
}

class Dog extends Animal {
  const Dog({
    required super.footNumber,
    required super.canRun,
    required super.canSwim,
    required super.canFly,
  });

  @override
  void wish() {
    print("I wish I could fly");
  }

  @override
  void introduce() {
    print("My name is Dog");
  }
}

class Fish extends Animal {
  const Fish({
    required super.footNumber,
    required super.canRun,
    required super.canSwim,
    required super.canFly,
  });

  @override
  void wish() {
    print("I wish I could walk");
  }

  @override
  void introduce() {
    print("My name is Fish");
  }
}

class Bird extends Animal {
  const Bird({
    required super.footNumber,
    required super.canRun,
    required super.canSwim,
    required super.canFly,
  });

  @override
  void wish() {
    print("I wish I could swim");
  }

  @override
  void introduce() {
    print("My name is Bird");
  }
}

class Duck extends Animal {
  const Duck({
    required super.footNumber,
    required super.canRun,
    required super.canSwim,
    required super.canFly,
  });

  @override
  void wish() {}

  @override
  void introduce() {
    print("My name is Duck");
  }
}

void main(List<String> args) {
  const dogObj = Dog(
    footNumber: 4,
    canRun: true,
    canSwim: true,
    canFly: false,
  );
  dogObj.introduce();
  dogObj.wish();
  dogObj.can();

  const fishObj = Fish(
    footNumber: 0,
    canRun: false,
    canSwim: true,
    canFly: false,
  );
  fishObj.introduce();
  fishObj.wish();
  fishObj.can();

  const birdObj = Bird(
    footNumber: 2,
    canRun: true,
    canSwim: false,
    canFly: true,
  );
  birdObj.introduce();
  birdObj.wish();
  birdObj.can();

  const duckObj = Duck(
    footNumber: 2,
    canRun: true,
    canSwim: true,
    canFly: false,
  );
  duckObj.introduce();
  duckObj.wish();
  duckObj.can();
}
