import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        title: Center(
          child: Text('Dicee',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.2
            ),
          ),
        ),
        backgroundColor: Colors.amber[700],
      ),
      body: DicePage(),
    ),
  ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('images/gameOfDice.png'),
        SizedBox(height: 50.0,),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftDiceNumber=Random().nextInt(6)+1; // Random method genrate number between 0 to provided number(exclusive)
                    });
                  },
                  child: Image.asset(
                      'images/dice$leftDiceNumber.png'
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      rightDiceNumber=Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset(
                      'images/dice$rightDiceNumber.png'
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  }


