import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const activeCardColor = Color(0xff1d1e33);
const inactiveCardColor = Color(0xff1d1e28);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  @override
  Widget build(BuildContext context) {
    void updateColor(Gender gender) {
      if (gender == Gender.male) {
        if (maleCardColor == inactiveCardColor) {
          maleCardColor = activeCardColor;
        } else {
          maleCardColor = inactiveCardColor;
        }
      }
      if (gender == Gender.female) {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeCardColor;
        } else {
          femaleCardColor = inactiveCardColor;
        }
      }
    }

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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                        print('male button pressed');
                      },
                      child: ReusableCard(
                        color: maleCardColor,
                        childCard: IconContent(
                          genderText: 'Male',
                          icon: FontAwesomeIcons.male,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                      print('female button pressed');
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      childCard: IconContent(
                        genderText: 'Female',
                        icon: FontAwesomeIcons.female,
                      ),
                    ),
                  )),
                ]),
              ),
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(child: ReusableCard(color: activeCardColor))
                ]),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(child: ReusableCard(color: activeCardColor)),
                    Expanded(child: ReusableCard(color: activeCardColor))
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
