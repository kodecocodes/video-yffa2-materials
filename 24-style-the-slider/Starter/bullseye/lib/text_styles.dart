import 'package:flutter/material.dart';

class LabelTextStyle {
  static TextStyle? bodyText1(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 12.0,
          color: Colors.black,
          letterSpacing: 2.0,
        );
  }
}

class ScoreNumberTextStyle {
  static TextStyle? headline4(BuildContext context) {
    return Theme.of(context).textTheme.headline4?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
          color: Colors.black,
        );
  }
}

class TargetTextStyle {
  static TextStyle? bodyText1(BuildContext context) {
    return Theme.of(context).textTheme.bodyText1?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 32.0,
          color: Colors.black,
        );
  }
}
