import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  ReusableContainer(this.colour, [this.cardChild]);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      child: cardChild,
    );
  }
}
