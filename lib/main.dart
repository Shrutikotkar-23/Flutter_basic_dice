import 'package:flutter/material.Dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
     const MaterialApp(
      home: Scaffold(
        
        body: GradientContainer(Color.fromARGB(255, 41, 137, 178), Color.fromARGB(0, 56, 28, 157)),
     ),
    ),
   );
}