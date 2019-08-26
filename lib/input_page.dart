import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = 0xff1d1e33;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: Color(activeCardColor),
                      childCard: IconContent(
                        genderText: 'Male',
                        icon: FontAwesomeIcons.male,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ReusableCard(
                    color: Color(activeCardColor),
                    childCard: IconContent(
                      genderText: 'Female',
                      icon: FontAwesomeIcons.female,
                    ),
                  )),
                ]),
              ),
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(child: ReusableCard(color: Color(activeCardColor)))
                ]),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: ReusableCard(color: Color(activeCardColor))),
                    Expanded(child: ReusableCard(color: Color(activeCardColor)))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
