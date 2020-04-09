import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color colour;
  final Widget myChild;

  MyContainer({@required this.colour, this.myChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: myChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
}
