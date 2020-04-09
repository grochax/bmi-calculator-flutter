import 'package:flutter/material.dart';

class GenderColumn extends StatelessWidget {
  final String text;
  final IconData icon;

  GenderColumn(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
          color: Colors.white,
        ),
        SizedBox(height: 15),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff8d8e98),
            fontSize: 18,
          ),
        )
      ],
    );
  }
}
