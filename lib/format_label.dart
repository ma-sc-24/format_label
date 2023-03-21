import 'package:flutter/material.dart';

/// Main class
/// [descriptionTextWeight], [mainTextWeight], [maxLines] and [textAlign] are optional properties
class FormatLabel extends StatelessWidget {
  final String mainText;
  final String description;
  final TextStyle mainTextStyle;
  final TextStyle descriptionTextStyle;
  final FontWeight? mainTextWeight;
  final FontWeight? descriptionTextWeight;
  final int? maxLines;
  final TextAlign? textAlign;

  /// Constructor
  const FormatLabel({
    Key? key,
    required this.mainText,
    required this.description,
    required this.mainTextStyle,
    required this.descriptionTextStyle,
    this.mainTextWeight,
    this.descriptionTextWeight = FontWeight.normal,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign!,
        maxLines: maxLines,
        text: TextSpan(
            style: (mainTextWeight == null)
                ? mainTextStyle
                : mainTextStyle.copyWith(fontWeight: mainTextWeight),
            text: '$mainText: ',
            children: [
              TextSpan(
                  text: description,
                  style: descriptionTextStyle.copyWith(
                      fontWeight: descriptionTextWeight))
            ]));
  }
}
