import 'package:flutter_test/flutter_test.dart';

import 'package:hasnain_ui_number_to_word/hasnain_ui_number_to_word.dart';

void main() {
  group('NumberToWord', () {
    test('Converts 0 to Zero', () {
      expect(NumberToWord.numberToWord(0), 'Zero');
    });

    test('Converts single-digit numbers', () {
      expect(NumberToWord.numberToWord(5), 'Five');
    });

    test('Converts double-digit numbers', () {
      expect(NumberToWord.numberToWord(15), 'Fifteen');
      expect(NumberToWord.numberToWord(25), 'Twenty Five');
    });

    test('Converts triple-digit numbers', () {
      expect(NumberToWord.numberToWord(123), 'One Hundred Twenty Three');
    });

    test('Converts thousands', () {
      expect(NumberToWord.numberToWord(1001), 'One Thousand One');
      expect(NumberToWord.numberToWord(123456),
          'One Hundred Twenty Three Thousand Four Hundred Fifty Six');
    });

    test('Converts millions', () {
      expect(NumberToWord.numberToWord(1000000), 'One Million');
      expect(NumberToWord.numberToWord(123456789),
          'One Hundred Twenty Three Million Four Hundred Fifty Six Thousand Seven Hundred Eighty Nine');
    });

    test('Converts billions', () {
      expect(NumberToWord.numberToWord(1000000000), 'One Billion');
      expect(NumberToWord.numberToWord(1234567890),
          'One Billion Two Hundred Thirty Four Million Five Hundred Sixty Seven Thousand Eight Hundred Ninety');
    });

    test('Throws error for negative numbers', () {
      expect(() => NumberToWord.numberToWord(-1), throwsArgumentError);
    });
  });
}
