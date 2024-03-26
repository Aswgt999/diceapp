// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var dice1 = 1;
  var dice2 = 1;
  void changeDice() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyanAccent,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: changeDice,
            child: Image.asset(
              'images/$dice1.png',
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: changeDice,
            child: Image.asset(
              'images/$dice2.png',
              height: 100,
              width: 100,
            ),
          ),
        ],
      )),
    );
  }
}
