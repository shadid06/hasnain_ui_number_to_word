[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shamim-hasnain/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://x.com/hasnain_bd)
[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/hasnain.dev)

# About Me

I am shamim hasnain (shadid), a Flutter & React developer with a passion for creating reusable UI components. I have created this package to help you convert numbers to words.

# hasnain_ui_number_to_word

A Flutter package that converts numeric values into their word representations. This package provides an easy-to-use solution for converting numbers into words, supporting values from zero up to trillions.

## Features

- Convert numbers to words (0 to 999,999,999,999,999)
- Support for single digits, teens, tens, hundreds, thousands, millions, billions, and trillions
- Clean and readable output format
- Handles zero and positive integers
- Throws ArgumentError for negative numbers

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  hasnain_ui_number_to_word: ^1.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

```dart
import 'package:hasnain_ui_number_to_word/hasnain_ui_number_to_word.dart';

void main() {
  // Basic usage
  print(NumberToWord.numberToWord(0));     // Output: Zero
  print(NumberToWord.numberToWord(42));    // Output: Forty Two
  print(NumberToWord.numberToWord(1000));  // Output: One Thousand

  // Larger numbers
  print(NumberToWord.numberToWord(1000000));        // Output: One Million
  print(NumberToWord.numberToWord(1000000000));     // Output: One Billion
  print(NumberToWord.numberToWord(1000000000000));  // Output: One Trillion
}
```

## Screenshots

![hasnain_ui_number_to_word](https://github.com/shadid06/hasnain_ui_number_to_word/raw/main/example/hasnain_ui_number_to_word.png)

## Example

```dart
final String result = NumberToWord.numberToWord(1234);
print(result); // Output: One Thousand Two Hundred Thirty Four
```

## Error Handling

The package throws an `ArgumentError` when attempting to convert negative numbers:

```dart
try {
  NumberToWord.numberToWord(-1);
} catch (e) {
  print(e); // Output: ArgumentError: Negative numbers are not supported.
}
```

## Limitations

- Only supports integers
- Does not support negative numbers
- Maximum supported number is 999,999,999,999,999 (999 trillion)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
