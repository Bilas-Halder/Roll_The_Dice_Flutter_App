import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        )
      ],
    );
  }
}
