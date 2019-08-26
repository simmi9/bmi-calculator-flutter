import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String genderText;
  final IconData icon;
  IconContent({this.genderText, this.icon});

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
