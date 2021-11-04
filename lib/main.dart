import 'package:flutter/material.dart';
import 'package:flutter_animations_demo/animations_screens/rotate_anim_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RotateAnimScreen(),
    );
  }
}
