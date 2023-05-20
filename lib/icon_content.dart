import 'package:flutter/material.dart';
import 'constants.dart';

class CustomColumn extends StatelessWidget {
  final String textName;
  final IconData myIcon;
  CustomColumn(this.textName, this.myIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myIcon,
          color: Colors.red,
          size: 60.0,
          semanticLabel: 'Text to announce in accessibility modes',
        ),
        SizedBox(
          height: 25,
        ),
        Text(
          textName,
          style: defaultText,
        )
      ],
    );
  }
}
