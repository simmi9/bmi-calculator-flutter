import 'package:flutter/material.dart';

class ChildCard extends StatelessWidget {
  final String genderText;
  final IconData icon;
  ChildCard({this.genderText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(genderText),
      ],
    );
  }
}
