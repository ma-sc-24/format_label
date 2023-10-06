import 'package:flutter/material.dart';
import 'package:format_label/format_label.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Format Text',
      home: Scaffold(
        body: Center(
          child: FormatLabel(
            mainText: 'Animals:',
            description: 'Dog, cat, duck, hippo, bird, tiger',
            mainTextStyle: TextStyle(fontSize: 14, color: Colors.red),
            descriptionTextStyle: TextStyle(fontSize: 14, color: Colors.teal),

            // Optional values. Default values are bold and normal respectively.
            mainTextWeight: FontWeight.w700,
            descriptionTextWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
