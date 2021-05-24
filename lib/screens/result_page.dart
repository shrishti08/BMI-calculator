import 'package:flutter/material.dart';
import '../components/MyContainer.dart';
import '../components/constants.dart';
import '../components/BottomContainer.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiValue,
      @required this.interpretation,
      @required this.result});
  final String result;
  final String bmiValue;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: MyContainer(
              colour: kActive_color,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result,
                    style: kResultStyle,
                  ),
                  Text(
                    bmiValue,
                    style: kBmiCount,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kSuggestion,
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            name: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
