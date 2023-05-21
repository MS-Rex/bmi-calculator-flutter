import 'package:flutter/material.dart';

const double kBottomcontainerHeight = 80.0;
const int kContainerColor = 0xFF1d1E33;
const int KinactiveColor = 0xFF111328;

const defaultText = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontFamily: 'JosefinSans',
);

TextStyle sliderText({
  double fsize = 20,
  //Widget fweight=FontWeight.normal
  FontWeight fonss = FontWeight.w200,
  Color fcolor = Colors.white,
}) {
  return TextStyle(
    color: fcolor,
    fontSize: fsize,
    fontFamily: 'JosefinSans',
    fontWeight: fonss,
  );
}
