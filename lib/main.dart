import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  // const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void dicechange() {
    dicecount1 = Random().nextInt(6) + 1;
    dicecount2 = Random().nextInt(6) + 1;
  }

  int dicecount1 = 1;
  int dicecount2 = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                dicechange();
              });
            },
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(20.0))),
            child: Image.asset('images/dice$dicecount1.png'),
          ),
        ),
        Expanded(
            child: TextButton(
          onPressed: () {
            setState(() {
              dicechange();
            });
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.all(20.0))),
          child: Image.asset('images/dice$dicecount2.png'),
        ))
      ],
    ));
  }
}

// class DicePage extends StatelessWidget {
//
// }
