import 'package:flutter/material.dart';
import 'colors.dart';

class TextStyles {
  static TextStyle get toolbar => const TextStyle(fontFamily: 'Anton', color: blue, fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 3);
  static TextStyle get header => const TextStyle(fontFamily: 'Lato', color: blue, fontSize: 26, fontWeight: FontWeight.bold, letterSpacing: -1);
  static TextStyle get body => const TextStyle(fontFamily: 'OpenSans', color: black, fontSize: 16);
  static TextStyle get text => const TextStyle(fontFamily: 'Quicksand', color: black, fontSize: 14);
  static TextStyle get hintText => const TextStyle(fontFamily: 'Quicksand', color: Colors.grey, fontSize: 14);
  static TextStyle get textMedium => const TextStyle(fontFamily: 'OpenSans', color: white, fontWeight: FontWeight.bold, fontSize: 14);
  static TextStyle get textMediumHint => const TextStyle(fontFamily: 'OpenSans',color: Colors.grey, fontSize: 12);
  static TextStyle get textSmall => const TextStyle(fontFamily: 'OpenSans', color: black, fontSize: 8);
  static TextStyle get buttonText => const TextStyle(fontFamily: 'Quicksand', color: white, fontSize: 14, fontWeight: FontWeight.bold);
  static TextStyle get textField => const TextStyle(fontFamily: 'Quicksand', color: black, fontSize: 16);
  static TextStyle get labelHeader => const TextStyle(fontFamily: 'Lato', color: black, fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle get textMediumHeader => const TextStyle(fontFamily: 'OpenSans', color: black, fontWeight: FontWeight.normal, fontSize: 19);
}