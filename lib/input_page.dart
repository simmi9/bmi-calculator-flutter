import 'package:flutter/material.dart';

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
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ]),
              ),
              Expanded(
                child: Row(children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  )
                ]),
              ),
              Expanded(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}
