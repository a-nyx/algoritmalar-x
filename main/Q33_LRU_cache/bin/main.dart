import 'solution1.dart';
// import 'solution2.dart';
// import 'solution3.dart';
// import 'solution4.dart';
// import 'starter_code.dart';

void main(List<String> arguments) {
  int capacity = 4;
  List<String> methods = [
    "put",
    "put",
    "put",
    "put",
    "put",
    "put",
    "get",
    "get"
  ];

  List<List<int>> parameters = [
    [11, 101],
    [22, 202],
    [33, 303],
    [44, 404],
    [22, 222],
    [55, 505],
    [44],
    [11]
  ];

  LRUCache cache = LRUCache(capacity);
  methods.asMap().forEach((i, m) {
    switch (m) {
      case "get":
        print("Getting ${parameters[i][0]}: ${cache.get(parameters[i][0])}");
        break;
      case "put":
        print("Inserting: {${parameters[i][0]}, ${parameters[i][1]}}");
        cache.put(parameters[i][0], parameters[i][1]);
        break;
    }
  });

  print('-- The End --');
}
