import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                result,
                style: kNumberTextStyle,
              ),
              Text(
                bmi.toString(),
                style: kNumberTextStyle,
              ),
              FlatButton(
                color: Colors.pink,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'RECALCULATE',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
