import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_column.dart';
import 'my_container.dart';
import 'constants.dart';

const myColor = Color(0xff1C1C2D);
const activeCardColor = Color(0xff1C1C2D);
const inactiveCardColor = Color(0xff111328);
int bmi = 66;
String result = '';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _height = 175;
  int _weight = 75;
  int _age = 30;

  Color _maleColor = inactiveCardColor;
  Color _femaleColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _maleColor = activeCardColor;
                          _femaleColor = inactiveCardColor;
                        },
                      );
                    },
                    child: MyContainer(
                      colour: _maleColor,
                      myChild: GenderColumn(FontAwesomeIcons.mars, 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          _femaleColor = activeCardColor;
                          _maleColor = inactiveCardColor;
                        },
                      );
                    },
                    child: MyContainer(
                      colour: _femaleColor,
                      myChild: GenderColumn(FontAwesomeIcons.venus, 'FEMALE'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              colour: myColor,
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(color: Color(0xff8d8e98), fontSize: 15),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        _height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(' cm')
                    ],
                  ),
                  Slider(
                    activeColor: Colors.pink,
                    value: _height.toDouble(),
                    min: 100,
                    max: 250,
                    //divisions: 100,
                    label: '$_height',
                    onChanged: (double newValue) {
                      setState(() {
                        _height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    colour: myColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT'),
                        Text(
                          _weight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 50, minWidth: 50),
                              fillColor: Color(0x30ffffff),
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 50, minWidth: 50),
                              fillColor: Color(0x30ffffff),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    colour: myColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE'),
                        Text(
                          _age.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  _age--;
                                });
                              },
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 50, minWidth: 50),
                              fillColor: Color(0x30ffffff),
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(
                                  () {
                                    _age++;
                                  },
                                );
                              },
                              shape: CircleBorder(),
                              constraints:
                                  BoxConstraints(minHeight: 50, minWidth: 50),
                              fillColor: Color(0x30ffffff),
                              child: Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            color: Colors.pink.shade600,
            onPressed: () {
              Navigator.pushNamed(context, '/result');
              bmi = _height + _weight + _age;
              if (bmi > 200) {
                result = 'OBESE';
              } else {
                result = 'NORMAL';
              }
            },
            child: Text('CALCULATE'),
          ),
        ],
      ),
    );
  }
}
