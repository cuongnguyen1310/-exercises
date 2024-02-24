class Queue<T> {
  List<T> list = [];
  T dequeue() {
    if (list.isEmpty) {
      throw Exception("This list is empty now, so it can't dequeue");
    }
    return list.removeAt(0);
  }

  void enqueue(T value) {
    list.add(value);
  }
}

void main(List<String> args) {
  var queue = Queue<String>();
  queue.enqueue("Nguyen");
  print(queue.list);
  print(queue.dequeue());
  print(queue.list);
  queue.enqueue("Tung");
  print(queue.list);
}
