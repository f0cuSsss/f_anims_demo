import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animations_demo/animations/f_slide_transition.dart';
import 'package:flutter_animations_demo/animations_screens/anim_form_screen.dart';
import 'package:flutter_animations_demo/animations_screens/hearts_anim_screen.dart';
import 'package:flutter_animations_demo/animations_screens/rotate_anim_screen.dart';
import 'package:flutter_animations_demo/fab/expandable_fab_screen.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     systemNavigationBarColor: Colors.pink,
  //     systemNavigationBarIconBrightness: Brightness.light,
  //     statusBarColor: Colors.transparent,
  //     statusBarIconBrightness: Brightness.light,
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fILU',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red, // status bar color
        brightness: Brightness.light, // status bar brightness
      ),
      home: const ExpandableFabScreen(),
      // home: const AnimFormScreen(),
      // home: const HeartsAnimScreen(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Animations demo'),
      //   ),
      //   body: const Center(
      //     child: fSlideTransition(
      //       child: RotateAnimScreen(),
      //     ),
      //   ),
      // ),
    );
  }
}
