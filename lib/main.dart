import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Dicee',
            style: TextStyle(fontSize: 25),
          ),
        ),
        backgroundColor: Colors.teal[500],
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void changeDiceNum(int side) {
    setState(() {
      if (side == 1) {
        leftDiceNum = Random().nextInt(6) + 1;
      } else if (side == 2) {
        rightDiceNum = Random().nextInt(6) + 1;
      } else {
        leftDiceNum = Random().nextInt(6) + 1;
        rightDiceNum = Random().nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextButton(
                  child: Image.asset('images/dice$leftDiceNum.png'),
                  onPressed: () {
                    changeDiceNum(1);
                  },
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: TextButton(
                  child: Image.asset('images/dice$rightDiceNum.png'),
                  onPressed: () {
                    changeDiceNum(2);
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
