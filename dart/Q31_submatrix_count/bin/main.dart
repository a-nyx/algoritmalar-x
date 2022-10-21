// import 'solution1.dart';
// import 'solution2.dart';
import 'solution3.dart';
// import 'starter_code.dart';

void main(List<String> arguments) {
  List<List<int>> matrix = [
    [1, 2, 3, 4, 5, 6],
    [2, 4, 6, 8, 10, 12],
    [3, 6, 9, 12, 15, 18],
    [4, 8, 12, 16, 20, 24],
    [5, 10, 15, 20, 25, 30],
  ];

  List<List<int>> tests = [
    [0, 0],
    [5, 4],
    [6, 7],
    [11, 1],
    [15, 11],
    [19, 0],
    [30, 13],
    [36, 11],
    [49, 1],
    [60, 12]
  ];

  Solution s = new Solution();
  bool isYay = true;

  tests.forEach((test) {
    int result = s.numSubmatrixSumTarget(matrix, test[0]);
    if (result == test[1]) {
      print("Passed");
    } else {
      print("Failed");
      isYay = false;
    }
  });

  if (isYay) print("Yay!");
}
