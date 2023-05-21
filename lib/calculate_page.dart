import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'bmi_calculate.dart';

class Calculate extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interPretation;
  Calculate(this.bmiResult, this.resultText, this.interPretation);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "YOUR RESULT",
                  style: sliderText(fsize: 40, fonss: FontWeight.w800),
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: ReusableContainer(
                    Color(KinactiveColor),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          resultText.toUpperCase(),
                          style: sliderText(fcolor: Colors.green),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          bmiResult,
                          style: sliderText(fsize: 100, fonss: FontWeight.w800),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          interPretation,
                          style: sliderText(fsize: 25),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ))),
            CalculateBMI(),
          ],
        ),
      ),
    );
  }
}

class CalculateBMI extends StatelessWidget {
  late Function? onTTap;
  late String? tapTitle;
  CalculateBMI([this.onTTap, this.tapTitle]);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: double.infinity,
        height: kBottomcontainerHeight,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            "CALCULATE",
            style: sliderText(fsize: 30),
          ),
        ),
      ),
    );
  }
}
