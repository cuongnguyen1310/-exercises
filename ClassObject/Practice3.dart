class Stack {
  final int capacity;
  final List<String> list = <String>[];
  Stack(this.capacity);

  bool isEmpty() {
    return list.isEmpty;
  }

  bool isFull() {
    return list.length == capacity;
  }

  String pop() {
    if (list.isEmpty) {
      throw Exception("This stack is empty now, so it can't pop more");
    }
    return list.removeLast();
  }

  void push(String value) {
    list.add(value);
  }
}

void main(List<String> args) {
  var stack = Stack(3);
  print("stack: ${stack.list}");
  print("stack.isEmpty(): ${stack.isEmpty()}");
  print("stack.isFull(): ${stack.isFull()}");
  stack.push("1");
  print("stack: ${stack.list}");
  print("stack.isEmpty(): ${stack.isEmpty()}");
  print("stack.isFull(): ${stack.isFull()}");
  stack.push("2");
  print("stack: ${stack.list}");
  print("stack.isEmpty(): ${stack.isEmpty()}");
  print("stack.isFull(): ${stack.isFull()}");
  stack.push("3");
  print("stack: ${stack.list}");
  print("stack.isEmpty(): ${stack.isEmpty()}");
  print("stack.isFull(): ${stack.isFull()}");
  print("get last element: ${stack.pop()}");
  print("stack: ${stack.list}");
  print("stack.isEmpty(): ${stack.isEmpty()}");
  print("stack.isFull(): ${stack.isFull()}");
}
