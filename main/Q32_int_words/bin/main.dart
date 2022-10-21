import 'solution1.dart';
// import 'solution2.dart';
// import 'starter_code.dart';

void main(List<String> arguments) {
  Map<int, String> tests = {
    0: 'Zero',
    7: 'Seven',
    45: 'Forty Five',
    719: 'Seven Hundred Nineteen',
    9001: 'Nine Thousand One',
    888000: 'Eight Hundred Eighty Eight Thousand',
    4000004: 'Four Million Four',
    1234567:
        'One Million Two Hundred Thirty Four Thousand Five Hundred Sixty Seven',
    11012013: 'Eleven Million Twelve Thousand Thirteen',
    1001001001: 'One Billion One Million One Thousand One',
    128000000000: 'One Hundred Twenty Eight Billion'
  };

  Solution s = new Solution();
  bool isYay = true;

  tests.forEach((number, words) {
    String result = s.numberToWords(number);
    if (result == words) {
      print("Passed: ${number} - ${result}");
    } else {
      print("Failed: ${number} - ${result}");
      isYay = false;
    }
  });

  if (isYay) print("Yay!");
}
