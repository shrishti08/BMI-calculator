import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {
  final String name;
  final Function onTap;
  BottomContainer({@required this.name, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            name,
            style: kBottomContainer,
          ),
        ),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 20.0),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kHeight,
      ),
    );
  }
}
