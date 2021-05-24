import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculation {
  Calculation({@required this.weight, @required this.height});
  final int height;
  final int weight;
  double _bmi;

  String bmiResult() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_bmi >= 25)
      return 'Your have a higher than normal body weight. You should exercise more';
    else if (_bmi > 18.5 && _bmi < 25)
      return 'Your body weight is normal. Good Job!';
    else
      return 'Your body weight is lower than normal. You should eat more';
  }
}
