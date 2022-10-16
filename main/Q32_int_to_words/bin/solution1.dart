class Solution {
  var ZERO = "Zero";
  var ONES = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine"
  ];
  var TENS = [
    "Twenty",
    "Thirty",
    "Forty",
    "Fifty",
    "Sixty",
    "Seventy",
    "Eighty",
    "Ninety"
  ];
  var TENPLUS = [
    "Ten",
    "Eleven",
    "Twelve",
    "Thirteen",
    "Fourteen",
    "Fifteen",
    "Sixteen",
    "Seventeen",
    "Eighteen",
    "Nineteen"
  ];
  var BILLION = "Billion";
  var MILLION = "Million";
  var THOUSAND = "Thousand";
  var HUNDRED = "Hundred";

  String numberToWords(int num) {
    if (num == 0) return ZERO;
    String words = "";

    if (num >= 1000000000) {
      words += write999(num ~/ 1000000000) + " " + BILLION;
      num = num % 1000000000;
    }

    if (num >= 1000000) {
      if (!words.isEmpty) words += " ";
      words += write999(num ~/ 1000000) + " " + MILLION;
      num = num % 1000000;
    }
    if (num >= 1000) {
      if (!words.isEmpty) words += " ";
      words += write999(num ~/ 1000) + " " + THOUSAND;
      num = num % 1000;
    }

    if (num > 0) {
      if (!words.isEmpty) words += " ";
      words += write999(num);
    }

    return words;
  }

  String write999(int num) {
    String words = "";

    int hundreds = num ~/ 100;
    if (hundreds != 0) {
      words += ONES[hundreds - 1] + " " + HUNDRED;
    }

    num %= 100;
    if (num >= 10 && num < 20) {
      if (!words.isEmpty) words += " ";
      words += TENPLUS[num - 10];
      return words;
    }

    int tens = num ~/ 10;
    if (tens != 0) {
      if (!words.isEmpty) words += " ";
      words += TENS[tens - 2];
    }

    num %= 10;
    if (num != 0) {
      if (!words.isEmpty) words += " ";
      words += ONES[num - 1];
    }

    return words;
  }
}
