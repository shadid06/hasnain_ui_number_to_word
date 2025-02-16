library hasnain_ui_number_to_word;

class NumberToWord {
  static const List<String> singleDigit = [
    '',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine'
  ];

  static const List<String> doubleDigit = [
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen'
  ];

  static const List<String> belowHundred = [
    'Twenty',
    'Thirty',
    'Forty',
    'Fifty',
    'Sixty',
    'Seventy',
    'Eighty',
    'Ninety'
  ];

  static String numberToWord(int n) {
    if (n < 0) {
      throw ArgumentError("Negative numbers are not supported.");
    }
    if (n == 0) return 'Zero';

    String translate(int num) {
      String word = "";
      if (num < 10) {
        word = singleDigit[num];
      } else if (num < 20) {
        word = doubleDigit[num - 10];
      } else if (num < 100) {
        final rem = translate(num % 10);
        word = '${belowHundred[num ~/ 10 - 2]}${rem.isNotEmpty ? ' $rem' : ''}';
      } else if (num < 1000) {
        word =
            '${singleDigit[num ~/ 100]} Hundred${num % 100 != 0 ? ' ${translate(num % 100)}' : ''}';
      } else if (num < 1000000) {
        word =
            '${translate(num ~/ 1000)} Thousand${num % 1000 != 0 ? ' ${translate(num % 1000)}' : ''}';
      } else if (num < 1000000000) {
        word =
            '${translate(num ~/ 1000000)} Million${num % 1000000 != 0 ? ' ${translate(num % 1000000)}' : ''}';
      } else if (num < 1000000000000) {
        word =
            '${translate(num ~/ 1000000000)} Billion${num % 1000000000 != 0 ? ' ${translate(num % 1000000000)}' : ''}';
      } else if (num < 1000000000000000) {
        word =
            '${translate(num ~/ 1000000000000)} Trillion${num % 1000000000000 != 0 ? ' ${translate(num % 1000000000000)}' : ''}';
      }
      return word.trim();
    }

    return translate(n);
  }
}
