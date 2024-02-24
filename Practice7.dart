mixin Android {
  void buildAndroid() {
    print("build android");
  }
}

mixin Ios {
  void buildIos() {
    print("build ios");
  }
}

mixin Web {
  void buildWeb() {
    print("build web");
  }
}

mixin DesktopApp {
  void buildDesktopApp() {
    print("build desktop app");
  }
}

abstract class Course {
  final String name;
  final int maximumQuantity;
  final List<String> students;
  Course(this.name, this.maximumQuantity, this.students);
  void build();
  int remainMembers() {
    return this.maximumQuantity - this.students.length;
  }

  void addMembersToFullClass() {
    List alphabets = [
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z"
    ];

    for (String letter in alphabets) {
      if (!this.students.contains(letter)) {
        this.students.add(letter);
        if (this.students.length == this.maximumQuantity) {
          break;
        }
      }
    }
  }
}

class FlutterCourse extends Course with Android, Ios, Web, DesktopApp {
  FlutterCourse(super.name, super.maximumQuantity, super.students);

  @override
  void build() {
    this.buildAndroid();
    this.buildIos();
    this.buildWeb();
    this.buildDesktopApp();
  }
}

class AndroidCourse extends Course with Android {
  AndroidCourse(super.name, super.maximumQuantity, super.students);

  @override
  void build() {
    this.buildAndroid();
  }
}

class IosCourse extends Course with Ios {
  IosCourse(super.name, super.maximumQuantity, super.students);

  @override
  void build() {
    this.buildIos();
  }
}

class WebCourse extends Course with Web {
  WebCourse(super.name, super.maximumQuantity, super.students);

  @override
  void build() {
    this.buildWeb();
  }
}

void main(List<String> args) {
  var flutterCourse = FlutterCourse("Flutter", 11, ['A', 'B']);
  flutterCourse.build();
  print("=========");
  var androidCourse = AndroidCourse("Android", 12, ['B', 'C', 'D']);
  androidCourse.build();
  print("=========");
  var iosCourse = IosCourse("Ios", 13, ['D', 'E', 'F']);
  iosCourse.build();
  print("=========");
  var webCourse = WebCourse("Web", 14, ['F']);
  webCourse.build();
  print("-----------------------");
  print("flutter remain members: ${flutterCourse.remainMembers()}");
  print("android remain members: ${androidCourse.remainMembers()}");
  print("ios remain members: ${iosCourse.remainMembers()}");
  print("web remain members: ${webCourse.remainMembers()}");
  print("-----------------------");
  flutterCourse.addMembersToFullClass();
  androidCourse.addMembersToFullClass();
  iosCourse.addMembersToFullClass();
  webCourse.addMembersToFullClass();
  print(
      "flutter course: all members after added to full: ${flutterCourse.students}, student length: ${flutterCourse.students.length}");
  print(
      "android course: all members after added to full: ${androidCourse.students}, student length: ${androidCourse.students.length}");
  print(
      "ios course: all members after added to full: ${iosCourse.students}, student length: ${iosCourse.students.length}");
  print(
      "web course: all members after added to full: ${webCourse.students}, student length: ${webCourse.students.length}");
}
