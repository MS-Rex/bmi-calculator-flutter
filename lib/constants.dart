import 'package:flutter/material.dart';

const double kBottomcontainerHeight = 80.0;
const int kContainerColor = 0xFF1d1E33;
const int KinactiveColor = 0xFF111328;

const defaultText = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'JosefinSans',
);

TextStyle sliderText(
    {double fsize = 20,
    //Widget fweight=FontWeight.normal
    var fonss = FontWeight.w200}) {
  return TextStyle(
      color: Colors.white,
      fontSize: fsize,
      fontFamily: 'JosefinSans',
      fontWeight: fonss);
}
