import 'package:flutter/material.dart';
import 'package:hasnain_ui_number_to_word/hasnain_ui_number_to_word.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final String zero = NumberToWord.numberToWord(0);
    final String ten = NumberToWord.numberToWord(10);
    final String hundred = NumberToWord.numberToWord(100);
    final String thousand = NumberToWord.numberToWord(1000);
    final String tenThousand = NumberToWord.numberToWord(10000);
    final String hundredThousand = NumberToWord.numberToWord(100000);
    final String million = NumberToWord.numberToWord(1000000);
    final String billion = NumberToWord.numberToWord(1000000000);
    final String trillion = NumberToWord.numberToWord(1000000000000);

    return MaterialApp(
      title: 'hasnain ui number to word',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('hasnain ui number to word'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  "$zero = 0",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$ten = 10",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$hundred = 100",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$thousand = 1000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$tenThousand = 10000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$hundredThousand = 100000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$million = 1000000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$billion = 1000000000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  "$trillion = 1000000000000",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
