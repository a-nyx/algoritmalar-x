import 'dart:collection';

class Node {
  late int value;
  late DateTime update_date;
  Node(this.value, this.update_date);
}

class LRUCache {
  late Map<int, Node> table;
  late int capacity;

  LRUCache(int cap) {
    table = HashMap();
    capacity = cap;
  }

  int get(int key) {
    table[key]?.update_date = DateTime.now();
    return table[key]?.value ?? -1;
  }

  void put(int key, int value) {
    table[key] = Node(value, DateTime.now());
    if (table.length > capacity) deleteLRU();
  }

  void deleteLRU() {
    int delete_key = -1;
    DateTime date = DateTime.now();

    table.keys.forEach((key) {
      if (table[key]!.update_date.isBefore(date)) {
        date = table[key]!.update_date;
        delete_key = key;
      }
    });

    table.remove(delete_key);
  }
}
