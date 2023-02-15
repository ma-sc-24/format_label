import 'package:flutter/material.dart';

class FormatLabel extends StatelessWidget {
  final String mainText;
  final String text;
  final Color mainColor;
  final Color descriptionColor;
  final double? size;
  final int? maxLines;
  final TextAlign? textAlign;

  const FormatLabel(
      {Key? key,
      required this.mainText,
      required this.text,
      required this.mainColor,
      required this.descriptionColor,
      this.size = 14, 
      this.maxLines = 1, 
      this.textAlign = TextAlign.left, 
    })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign!,
      maxLines: maxLines,
        text: TextSpan(
            style: TextStyle(
                fontSize: size, fontWeight: FontWeight.bold, color: mainColor),
            text: '$mainText: ',
            children: [
          TextSpan(
              text: text,
              style: TextStyle(
                  fontSize: size, fontWeight: FontWeight.normal, color: descriptionColor))
        ]));
  }
}
