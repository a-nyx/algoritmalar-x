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

  String numberToWords(int num) {
    if (num == 0) return ZERO;

    if (num >= 1000000000) {
      String words = numberToWords(num ~/ 1000000000) + " Billion";
      if (num % 1000000000 != 0) {
        words += " " + numberToWords(num % 1000000000);
      }
      return words;
    }

    if (num >= 1000000) {
      String words = numberToWords(num ~/ 1000000) + " Million";
      if (num % 1000000 != 0) {
        words += " " + numberToWords(num % 1000000);
      }
      return words;
    }

    if (num >= 1000) {
      String words = numberToWords(num ~/ 1000) + " Thousand";
      if (num % 1000 != 0) {
        words += " " + numberToWords(num % 1000);
      }
      return words;
    }

    String words = "";

    int hundreds = num ~/ 100;
    if (hundreds != 0) {
      words += ONES[hundreds - 1] + " Hundred";
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
