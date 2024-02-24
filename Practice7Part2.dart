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
  static int lessonNumber = 10;
  Course(
    this.name,
    this.maximumQuantity,
    this.students,
  );
  void build();
  int remainMembers() {
    return this.maximumQuantity - this.students.length;
  }

  static bool isValidCommonLessonNumber(int newLessonNumber) {
    if (newLessonNumber > 10) {
      return true;
    }
    return false;
  }

  static void setLessonNumber() {
    AndroidCourse.lessonNumber = Course.lessonNumber + 7;
    FlutterCourse.lessonNumber = Course.lessonNumber + 2;
    IosCourse.lessonNumber = Course.lessonNumber + 10;
    WebCourse.lessonNumber = Course.lessonNumber;
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
  static int lessonNumberGreater = 2;
  static int lessonNumber =
      Course.lessonNumber + FlutterCourse.lessonNumberGreater;
  FlutterCourse(
    super.name,
    super.maximumQuantity,
    super.students,
  );

  @override
  void build() {
    this.buildAndroid();
    this.buildIos();
    this.buildWeb();
    this.buildDesktopApp();
  }

  static void changeLessonNumber(int newLessonNumber) {
    if (FlutterCourse.lessonNumber != newLessonNumber) {
      Course.lessonNumber = newLessonNumber - FlutterCourse.lessonNumberGreater;
      Course.setLessonNumber();
    }
  }
}

class AndroidCourse extends Course with Android {
  static int lessonNumberGreater = 7;
  static int lessonNumber =
      Course.lessonNumber + AndroidCourse.lessonNumberGreater;
  AndroidCourse(
    super.name,
    super.maximumQuantity,
    super.students,
  );

  @override
  void build() {
    this.buildAndroid();
  }

  static void changeLessonNumber(int newLessonNumber) {
    if (AndroidCourse.lessonNumber != newLessonNumber) {
      Course.lessonNumber = newLessonNumber - AndroidCourse.lessonNumberGreater;
      Course.setLessonNumber();
    }
  }
}

class IosCourse extends Course with Ios {
  static int lessonNumberGreater = 10;
  static int lessonNumber = Course.lessonNumber + IosCourse.lessonNumberGreater;
  IosCourse(
    super.name,
    super.maximumQuantity,
    super.students,
  );

  @override
  void build() {
    this.buildIos();
  }

  static void changeLessonNumber(int newLessonNumber) {
    if (IosCourse.lessonNumber != newLessonNumber) {
      Course.lessonNumber = newLessonNumber - IosCourse.lessonNumberGreater;
      Course.setLessonNumber();
    }
  }
}

class WebCourse extends Course with Web {
  static int lessonNumber = Course.lessonNumber;
  WebCourse(
    super.name,
    super.maximumQuantity,
    super.students,
  );

  @override
  void build() {
    this.buildWeb();
  }

  static void changeLessonNumber(int newLessonNumber) {
    if (WebCourse.lessonNumber != newLessonNumber) {
      Course.lessonNumber = newLessonNumber;
      Course.setLessonNumber();
    }
  }
}

void main(List<String> args) {
  var flutterCourse = FlutterCourse(
    "Flutter",
    11,
    ['A', 'B'],
  );
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
  // test part 2 below
  print("lessonNumber of webCourse: ${WebCourse.lessonNumber}");
  print("lessonNumber of flutterCourse: ${FlutterCourse.lessonNumber}");
  print("lessonNumber of androidCourse: ${AndroidCourse.lessonNumber}");
  print("lessonNumber of iosCourse: ${IosCourse.lessonNumber}");
  print("==========================");
  AndroidCourse.changeLessonNumber(18);
  print("lessonNumber of Course: ${Course.lessonNumber}");
  print("lessonNumber of webCourse: ${WebCourse.lessonNumber}");
  print("lessonNumber of flutterCourse: ${FlutterCourse.lessonNumber}");
  print("lessonNumber of androidCourse: ${AndroidCourse.lessonNumber}");
  print("lessonNumber of iosCourse: ${IosCourse.lessonNumber}");
  print("==========================");
}
