import 'result_page.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage()
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0E0F20),
        primaryColor: Color(0xff100F23),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      // home: InputPage(),
    );
  }
}
