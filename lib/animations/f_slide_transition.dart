import 'package:flutter/material.dart';

class fSlideTransition extends StatefulWidget {
  const fSlideTransition({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _fSlideTransitionState createState() => _fSlideTransitionState();
}

class _fSlideTransitionState extends State<fSlideTransition>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.ease),
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: widget.child,
    );
  }
}
