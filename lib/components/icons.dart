import 'package:flutter/material.dart';
import 'constants.dart';

// ignore: camel_case_types
class iconChild extends StatelessWidget {
  final IconData icon;
  final String txt;

  iconChild({@required this.icon, @required this.txt});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          txt,
          style: kTextStyle,
        )
      ],
    );
  }
}
