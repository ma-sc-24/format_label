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
                mainText: 'Aminals:',
                text: 'Dog, cat, duck, hippo, bird, tiger',
                mainColor: Colors.black,
                descriptionColor: Colors.black)),
      ),
    );
  }
}
