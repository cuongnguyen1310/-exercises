class Queue {
  final int capacity;
  final List<String> list = <String>[];
  Queue(this.capacity);

  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  String? dequeue() {
    if (list.isEmpty) {
      throw Exception("This queue is empty now, so it can't dequeue more");
    }
    return list.removeAt(0);
  }

  void enqueue(String value) {
    list.add(value);
  }
}

void main(List<String> args) {
  var queue = Queue(3);
  print("queue: ${queue.list}");
  print("queue.isEmpty(): ${queue.isEmpty()}");
  print("queue.isFull(): ${queue.isFull()}");
  queue.enqueue("1");
  print("queue: ${queue.list}");
  print("queue.isEmpty(): ${queue.isEmpty()}");
  print("queue.isFull(): ${queue.isFull()}");
  queue.enqueue("2");
  print("queue: ${queue.list}");
  print("queue.isEmpty(): ${queue.isEmpty()}");
  print("queue.isFull(): ${queue.isFull()}");
  queue.enqueue("3");
  print("queue: ${queue.list}");
  print("queue.isEmpty(): ${queue.isEmpty()}");
  print("queue.isFull(): ${queue.isFull()}");
  print("get first element: ${queue.dequeue()}");
  print("queue: ${queue.list}");
  print("queue.isEmpty(): ${queue.isEmpty()}");
  print("queue.isFull(): ${queue.isFull()}");
}
