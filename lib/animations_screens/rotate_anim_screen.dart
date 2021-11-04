import 'package:flutter/material.dart';

class RotateAnimScreen extends StatefulWidget {
  const RotateAnimScreen({Key? key}) : super(key: key);

  @override
  State<RotateAnimScreen> createState() => _RotateAnimScreenState();
}

class _RotateAnimScreenState extends State<RotateAnimScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      // duration: const Duration(seconds: 3),
      duration: const Duration(seconds: 2),
    );
    _rotateAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
    _scaleAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.ease),
    );
    _controller.forward();
    // _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: RotationTransition(
            turns: _rotateAnimation,
            child: Container(
              height: 60,
              width: 60,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}
