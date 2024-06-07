import 'package:flutter/material.Dart';


class Style extends StatelessWidget{

  const Style(this.text , {super.key});

 final String text;
@override
Widget build(context){
  return  Text(
    text,
     style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          );
  }
}