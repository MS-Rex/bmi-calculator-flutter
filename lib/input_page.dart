import 'package:bmi_calculator/calculate_page.dart';
import 'package:bmi_calculator/main.dart';
import 'bmi_calculate.dart';

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
int currentWeight = 50;
int currentAge = 20;

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
                    child: ReusableContainer(
                        Color(kContainerColor),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: sliderText(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              currentWeight.toString(),
                              style:
                                  sliderText(fsize: 60, fonss: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcon(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    currentWeight = currentWeight - 1;
                                  });
                                }),
                                SizedBox(
                                  width: 40,
                                ),
                                RoundIcon(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    currentWeight = currentWeight + 1;
                                  });
                                })
                              ],
                            )
                          ],
                        )),
                  ),
                  Expanded(
                    child: ReusableContainer(
                        Color(kContainerColor),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: sliderText(),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              currentAge.toString(),
                              style:
                                  sliderText(fsize: 60, fonss: FontWeight.w900),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundIcon(FontAwesomeIcons.minus, () {
                                  setState(() {
                                    currentAge = currentAge - 1;
                                  });
                                }),
                                SizedBox(
                                  width: 40,
                                ),
                                RoundIcon(FontAwesomeIcons.plus, () {
                                  setState(() {
                                    currentAge = currentAge + 1;
                                  });
                                })
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculateBMI2 calbmi =
                    CalculateBMI2(currentValue, currentWeight);
                print(calbmi.calBMI());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Calculate(calbmi.calBMI(),
                          calbmi.getresult(), calbmi.getInterpretation())),
                );
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
                  child: FaIcon(
                    FontAwesomeIcons.clipboardCheck,
                    color: Colors.black,
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPresss;

  //int currentWeightt;
  RoundIcon(this.icon, this.onPresss);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
        size: 30,
      ),
      onPressed: onPresss,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

// class RoundIcon extends StatefulWidget {
//   IconData icon1;
//   //int currentWeightt;
//   RoundIcon(
//     this.icon1,
//   );

//   @override
//   State<RoundIcon> createState() => _RoundIconState();
// }

// class _RoundIconState extends State<RoundIcon> {
//   RoundIcon rmb = RoundIcon(FontAwesomeIcons.plus);
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       child: Icon(
//         rmb.icon1,
//         color: Colors.white,
//         size: 30,
//       ),
//       onPressed: () {
//         setState(() {
//           currentWeight = currentWeight + 10;
//         });

//         print("pressedd");
//       },
//       elevation: 6.0,
//       constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }

//0xFF1d1E33