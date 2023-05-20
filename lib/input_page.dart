import 'package:bmi_calculator/main.dart';

import 'icon_content.dart';
//import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_cart.dart';
import 'constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

Gender? genderSelected;
var colorSelect = KinactiveColor;
int currentValue = 150;

class MainText extends StatelessWidget {
  final String mainText;
  final double mainSize;
  MainText(this.mainText, this.mainSize);
  @override
  Widget build(BuildContext context) {
    return Text(
      mainText,
      style: TextStyle(
        color: Colors.white,
        fontSize: mainSize,
        fontFamily: 'JosefinSans',
      ),
    );
  }
}

class _InputPageState extends State<InputPage> {
  // late Widget cardchiid = Column(
  //   crossAxisAlignment: CrossAxisAlignment.stretch,
  //   children: [
  //     MainText('HEIGHT', 30),
  //     Row(
  //       children: [
  //         Text(
  //           currentValue.toString(),
  //           style: defaultText,
  //         ),
  //         Text('cm')
  //       ],
  //     ),
  //     Slider(
  //       value: currentValue,
  //       max: 200,
  //       divisions: 5,
  //       activeColor: Color(0xFFFB1555),
  //       label: currentValue.round().toString(),
  //       onChanged: (double value) {
  //         setState(() {
  //           currentValue = value;
  //           print(currentValue);
  //         });
  //       },
  //     )
  //   ],
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATORRR'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSelected = Gender.male;
                        });
                      },
                      child: ReusableContainer(
                        Color(genderSelected == Gender.male
                            ? colorSelect = kContainerColor
                            : colorSelect = KinactiveColor),
                        CustomColumn('MALE', FontAwesomeIcons.mars),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          genderSelected = Gender.female;
                        });
                      },
                      child: ReusableContainer(
                          Color(genderSelected == Gender.female
                              ? colorSelect = kContainerColor
                              : colorSelect = KinactiveColor),
                          CustomColumn('FEMALE', FontAwesomeIcons.venus)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                  Color(kContainerColor),
                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        'HEIGHT',
                        style: sliderText(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.all(10)),
                          Text(
                            currentValue.toString(),
                            style:
                                sliderText(fsize: 60, fonss: FontWeight.w800),
                          ),
                          Text(
                            'cm',
                            style: sliderText(),
                          )
                        ],
                      ),
                      Slider(
                        value: currentValue.toDouble(),
                        min: 100,
                        max: 250,
                        activeColor: Color(0xFFFB1555),
                        inactiveColor: Color(0xFF8D8E98),
                        label: currentValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentValue = value.round();
                            //print(currentValue);
                          });
                        },
                      )
                    ],
                  )),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableContainer(Color(kContainerColor)),
                  ),
                  Expanded(
                    child: ReusableContainer(Color(kContainerColor)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: kBottomcontainerHeight,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue,
              ),
              child: Center(
                child: FaIcon(
                  FontAwesomeIcons.mars,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}




//0xFF1d1E33