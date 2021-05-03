import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.red,
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
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Left button got pressed');
              },
              child: Image.asset(
                  'images/dice1.png'
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print('Right button got pressed');
              },
              child: Image.asset(
                  'images/dice1.png'
              ),
            ),
          ),
        ],
      ),
    );
  }
  }


