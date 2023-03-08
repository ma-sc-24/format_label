import 'package:flutter/material.dart';

/// Main class
/// [size], [maxLines] and [textAlign] are optional properties
class FormatLabel extends StatelessWidget {
  final String mainText;
  final String description;
  final Color textColor;
  final FontWeight mainTextWeight;
  final FontWeight? descriptionTextWeight;
  final double? size;
  final int? maxLines;
  final TextAlign? textAlign;

  /// Constructor
  const FormatLabel({
    Key? key,
    required this.mainText,
    required this.description,
    required this.textColor,
    required this.mainTextWeight,
    this.descriptionTextWeight = FontWeight.normal,
    this.size = 14,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign!,
        maxLines: maxLines,
        text: TextSpan(
            style: TextStyle(
                fontSize: size, color: textColor, fontWeight: mainTextWeight),
            text: '$mainText: ',
            children: [
              TextSpan(
                  text: description,
                  style: TextStyle(
                      fontSize: size,
                      fontWeight: descriptionTextWeight,
                      color: textColor))
            ]));
  }
}
