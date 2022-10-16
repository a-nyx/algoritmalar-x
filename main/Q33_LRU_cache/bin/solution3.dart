import 'dart:collection';

class LRUCache {
  late LinkedHashMap<int, int> o_table;
  late int capacity;

  LRUCache(int cap) {
    o_table = LinkedHashMap();
    capacity = cap;
  }

  int get(int key) {
    if (!o_table.containsKey(key)) return -1;
    int value = o_table[key]!;
    o_table.remove(key);
    o_table[key] = value;
    return value;
  }

  void put(int key, int value) {
    if (o_table.containsKey(key)) o_table.remove(key);
    o_table[key] = value;
    if (o_table.length > capacity) o_table.remove(o_table.keys.first);
  }
}
