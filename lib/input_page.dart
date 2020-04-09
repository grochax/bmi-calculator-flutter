import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_column.dart';
import 'my_container.dart';

const myColor = Color(0xff1C1C2D);
const activeCardColor = Color(0xff1C1C2D);
const inactiveCardColor = Color(0xff111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _duelCommandment = 175;
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
                        _duelCommandment.toString(),
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(' cm')
                    ],
                  ),
                  Slider(
                    activeColor: Colors.pink,
                    value: _duelCommandment.toDouble(),
                    min: 100,
                    max: 250,
                    //divisions: 100,
                    label: '$_duelCommandment',
                    onChanged: (double newValue) {
                      setState(() {
                        _duelCommandment = newValue.round();
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
                  child: MyContainer(colour: myColor),
                ),
                Expanded(
                  child: MyContainer(colour: myColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
              padding: EdgeInsets.symmetric(vertical: 20),
              onPressed: () {},
              child: Text('CALCULATE'),
              color: Colors.pink.shade600,
              textColor: Colors.white

              // Container(
              //   child:
              //   decoration: BoxDecoration(color: Colors.red),
              // ),
              )
        ],
      ),
    );
  }
}
