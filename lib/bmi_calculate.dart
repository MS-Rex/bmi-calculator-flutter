import 'dart:math';

class CalculateBMI2 {
  final int height;
  final int weight;
  late double _bmi;
  CalculateBMI2(this.height, this.weight);

  String calBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi >= 25) {
      return "OverWeight";
    } else if (_bmi >= 18) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "Don't Eat so much Food";
    } else if (_bmi >= 18) {
      return "You are healty";
    } else {
      return "Eat more and Buld";
    }
  }
}
