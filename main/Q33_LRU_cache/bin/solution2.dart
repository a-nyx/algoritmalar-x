import 'dart:collection';

class Node extends LinkedListEntry<Node> {
  int key;
  int value;
  Node(this.key, this.value);
}

class LRUCache {
  late LinkedList<Node> list;
  late int capacity;

  LRUCache(int cap) {
    list = LinkedList();
    capacity = cap;
  }

  int get(int key) {
    Node node =
        list.firstWhere((e) => e.key == key, orElse: () => Node(-1, -1));
    if (node.key == -1) return -1;
    node.unlink();
    list.add(node);
    return node.value;
  }

  void put(int key, int value) {
    // Necessary if  it is OK to insert same key with different value.
    // var node =
    //     list.firstWhere((e) => e.key == key, orElse: () => Node(-1, -1));
    // if (node.key != -1) {
    //   node.unlink();
    //   node.value = value;
    //   list.add(node);
    //   return;
    // }
    list.add(Node(key, value));
    if (list.length > capacity) list.first.unlink();
  }
}
