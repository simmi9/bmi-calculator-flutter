import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.cyan,
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(body1: TextStyle(color: Colors.limeAccent))),
      home: Center(child: InputPage()),
    );
  }
}
