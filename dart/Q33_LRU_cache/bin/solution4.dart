import 'dart:collection';

class Node {
  late int key;
  late int value;
  late Node prev;
  late Node next;
}

class LRUCache {
  late int capacity;
  late HashMap<int, Node> table;
  late Node f_head;
  late Node f_tail;

  LRUCache(int cap) {
    capacity = cap;
    table = HashMap();
    f_head = Node();
    f_tail = Node();
    f_head.next = f_tail;
    f_tail.prev = f_head;
  }

  int get(int key) {
    Node? node = table[key];
    if (node == null) return -1;
    moveToHead(node);
    return node.value;
  }

  void put(int key, int value) {
    Node? node = table[key];
    if (node != null) {
      node.value = value;
      moveToHead(node);
      return;
    }

    Node newNode = Node();
    newNode.key = key;
    newNode.value = value;

    table[key] = newNode;
    addHead(newNode);

    if (table.length > capacity) deleteOld();
  }

  void moveToHead(Node node) {
    removeNode(node);
    addHead(node);
  }

  void removeNode(Node node) {
    node.prev.next = node.next;
    node.next.prev = node.prev;
  }

  void addHead(Node node) {
    node.prev = f_head;
    node.next = f_head.next;
    f_head.next.prev = node;
    f_head.next = node;
  }

  void deleteOld() {
    Node node = f_tail.prev;
    removeNode(node);
    table.remove(node.key);
  }
}
