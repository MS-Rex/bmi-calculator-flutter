import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.yellow,
            primary: Colors.black,
          ),
          scaffoldBackgroundColor: Colors.black38,
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}
