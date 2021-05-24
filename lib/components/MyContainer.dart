import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  MyContainer({@required this.colour, this.cardChild, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: colour,
        ),
      ),
    );
  }
}
