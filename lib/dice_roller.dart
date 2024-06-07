import 'package:flutter/material.Dart';

import 'dart:math';

final randomizer = Random();

//for statefulWidget always we have to create two classes.
// second class name should start with underscore and then firstclassname with State word at its last.
// underscore has a spl meaning it means this is a private class & can only be executed in the first(above) class.

class DiceRoller extends StatefulWidget{

  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var currentValue = 2;

  void rollDice() {
    setState((){
      currentValue =  randomizer.nextInt(6)+1;

    });
  }

  @override
  Widget build(context){
    return  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
             Image.asset(
             'assets/images/dice-$currentValue.png',
             width : 200
             ),
             const SizedBox(height: 30),
             TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice')),
            ],
            );
  }
}