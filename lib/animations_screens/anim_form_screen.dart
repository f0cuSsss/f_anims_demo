import 'package:flutter/material.dart';
import 'package:flutter_animations_demo/animations/f_slide_transition.dart';

class AnimFormScreen extends StatefulWidget {
  const AnimFormScreen({Key? key}) : super(key: key);

  @override
  State<AnimFormScreen> createState() => _AnimFormScreenState();
}

class _AnimFormScreenState extends State<AnimFormScreen> {
  late List<Widget> formInputFields;

  @override
  void initState() {
    formInputFields = [
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
      inputFieldItem(title: 'Testing'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 25),
                  ...formInputFields.asMap().entries.map((item) {
                    int idx = item.key;
                    int msec = idx > 2 ? 1500 : 500 * (idx + 1);
                    return fSlideTransition(
                      duration: Duration(milliseconds: msec),
                      child: item.value,
                    );
                  }),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: fButtonBottomSlideAnimation(
                  child: SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                        elevation: MaterialStateProperty.all(1),
                      ),
                      child: const Text(
                        'Apply',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column inputFieldItem({required String title}) {
    return Column(
      children: [
        Text(title),
        const TextField(),
        const SizedBox(height: 25),
      ],
    );
  }
}

class fButtonBottomSlideAnimation extends StatefulWidget {
  const fButtonBottomSlideAnimation({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  _fButtonBottomSlideAnimationState createState() =>
      _fButtonBottomSlideAnimationState();
}

class _fButtonBottomSlideAnimationState
    extends State<fButtonBottomSlideAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<Offset>(
      begin: const Offset(0, 1.2),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic),
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
