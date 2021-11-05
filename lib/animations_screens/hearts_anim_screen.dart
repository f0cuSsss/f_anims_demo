import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class HeartsAnimScreen extends StatefulWidget {
  const HeartsAnimScreen({Key? key}) : super(key: key);

  @override
  _HeartsAnimScreenState createState() => _HeartsAnimScreenState();
}

class _HeartsAnimScreenState extends State<HeartsAnimScreen>
    with TickerProviderStateMixin {
  // --------------------------------------------------
  late AnimationController _controller1;
  late AnimationController _centerRightHeartController;
  late AnimationController _bouncingHeartController;
  late AnimationController _microBounceController;
  // --------------------------------------------------
  late AnimationController _fadeStarController1;
  late AnimationController _fadeStarController2;
  late AnimationController _fadeStarController3;
  late AnimationController _fadeStarController4;
  late AnimationController _fadeStarController5;
  late AnimationController _fadeStarController6;
  late AnimationController _fadeStarController7;
  late AnimationController _fadeStarController8;
  late AnimationController _fadeStarController9;
  late AnimationController _fadeStarController10;
  late AnimationController _fadeStarController11;
  late AnimationController _fadeStarController12;
  late AnimationController _fadeStarController13;
  late AnimationController _fadeStarController14;
  late AnimationController _fadeStarController15;
  late AnimationController _fadeStarController16;
  late AnimationController _fadeStarController17;
  late AnimationController _fadeStarController18;
  late AnimationController _fadeStarController19;
  // --------------------------------------------------
  late AnimationController _fadeTextLineController1;
  late AnimationController _fadeTextLineController2;
  late AnimationController _fadeTextLineController3;
  late AnimationController _fadeTextLineController4;
  late AnimationController _scaleTextLineController;
  // --------------------------------------------------
  late Animation<double> _scaleAnimation1;
  late Animation<double> _centerRightHeartAnimation;
  late Animation<double> _bouncingHeartAnimation;
  late Animation<double> _microBounceAnimation;
  // --------------------------------------------------
  late Animation<AlignmentGeometry> _alignAnimation1;
  // --------------------------------------------------
  late Animation<double> _fadeStarAnimation1;
  late Animation<double> _fadeStarAnimation2;
  late Animation<double> _fadeStarAnimation3;
  late Animation<double> _fadeStarAnimation4;
  late Animation<double> _fadeStarAnimation5;
  late Animation<double> _fadeStarAnimation6;
  late Animation<double> _fadeStarAnimation7;
  late Animation<double> _fadeStarAnimation8;
  late Animation<double> _fadeStarAnimation9;
  late Animation<double> _fadeStarAnimation10;
  late Animation<double> _fadeStarAnimation11;
  late Animation<double> _fadeStarAnimation12;
  late Animation<double> _fadeStarAnimation13;
  late Animation<double> _fadeStarAnimation14;
  late Animation<double> _fadeStarAnimation15;
  late Animation<double> _fadeStarAnimation16;
  late Animation<double> _fadeStarAnimation17;
  late Animation<double> _fadeStarAnimation18;
  late Animation<double> _fadeStarAnimation19;
  // --------------------------------------------------
  late Animation<double> _fadeTextLineAnimation1;
  late Animation<double> _fadeTextLineAnimation2;
  late Animation<double> _fadeTextLineAnimation3;
  late Animation<double> _fadeTextLineAnimation4;
  late Animation<double> _scaleTextLineAnimation;
  // --------------------------------------------------
  @override
  void initState() {
    _controller1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _scaleAnimation1 = Tween<double>(begin: 0.5, end: 3).animate(
      CurvedAnimation(parent: _controller1, curve: Curves.ease),
    );
    _alignAnimation1 = Tween<AlignmentGeometry>(
            begin: Alignment.topLeft, end: Alignment.center)
        .animate(
      CurvedAnimation(parent: _controller1, curve: Curves.decelerate),
    );
    _controller1.repeat(reverse: true);
    // --------------------------------------------------
    _bouncingHeartController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    _bouncingHeartAnimation = Tween<double>(begin: 150, end: 180).animate(
        CurvedAnimation(
            parent: _bouncingHeartController, curve: Curves.bounceOut));
    _bouncingHeartController.repeat(reverse: true);
    // --------------------------------------------------
    _centerRightHeartController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _centerRightHeartAnimation = Tween<double>(begin: 1, end: 3).animate(
        CurvedAnimation(
            parent: _centerRightHeartController, curve: Curves.bounceInOut));
    _centerRightHeartController.repeat(reverse: true);
    // --------------------------------------------------

    _microBounceController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _microBounceAnimation = Tween<double>(begin: 50, end: 55).animate(
        CurvedAnimation(
            parent: _microBounceController, curve: Curves.decelerate));
    _microBounceController.repeat(reverse: true);
    // --------------------------------------------------
    _fadeStarController1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeStarAnimation1 =
        CurvedAnimation(parent: _fadeStarController1, curve: Curves.ease);
    _fadeStarController1.repeat(reverse: true);
    //? ===============
    _fadeStarController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    _fadeStarAnimation2 =
        CurvedAnimation(parent: _fadeStarController2, curve: Curves.decelerate);
    _fadeStarController2.repeat(reverse: true);
    //? ===============
    _fadeStarController3 =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));
    _fadeStarAnimation3 =
        CurvedAnimation(parent: _fadeStarController3, curve: Curves.ease);
    _fadeStarController3.repeat(reverse: true);
    //? ===============
    _fadeStarController4 =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _fadeStarAnimation4 =
        CurvedAnimation(parent: _fadeStarController4, curve: Curves.ease);
    _fadeStarController4.repeat(reverse: true);
    //? ===============
    _fadeStarController5 =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _fadeStarAnimation5 =
        CurvedAnimation(parent: _fadeStarController5, curve: Curves.easeIn);
    _fadeStarController5.repeat(reverse: true);
    //? ===============
    _fadeStarController6 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 5500));
    _fadeStarAnimation6 =
        CurvedAnimation(parent: _fadeStarController6, curve: Curves.ease);
    _fadeStarController6.repeat(reverse: true);
    //? ===============
    _fadeStarController7 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeStarAnimation7 =
        CurvedAnimation(parent: _fadeStarController7, curve: Curves.decelerate);
    _fadeStarController7.repeat(reverse: true);
    //? ===============
    _fadeStarController8 =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _fadeStarAnimation8 =
        CurvedAnimation(parent: _fadeStarController8, curve: Curves.ease);
    _fadeStarController8.repeat(reverse: true);
    //? ===============
    _fadeStarController9 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 5500));
    _fadeStarAnimation9 =
        CurvedAnimation(parent: _fadeStarController9, curve: Curves.ease);
    _fadeStarController9.repeat(reverse: true);
    //? ===============
    _fadeStarController10 =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));
    _fadeStarAnimation10 =
        CurvedAnimation(parent: _fadeStarController10, curve: Curves.ease);
    _fadeStarController10.repeat(reverse: true);
    //? ===============
    _fadeStarController11 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3500));
    _fadeStarAnimation11 =
        CurvedAnimation(parent: _fadeStarController11, curve: Curves.ease);
    _fadeStarController11.repeat(reverse: true);
    //? ===============
    _fadeStarController12 =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _fadeStarAnimation12 =
        CurvedAnimation(parent: _fadeStarController12, curve: Curves.ease);
    _fadeStarController12.repeat(reverse: true);
    //? ===============
    _fadeStarController13 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeStarAnimation13 = CurvedAnimation(
        parent: _fadeStarController13, curve: Curves.decelerate);
    _fadeStarController13.repeat(reverse: true);
    //? ===============
    _fadeStarController14 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3500));
    _fadeStarAnimation14 =
        CurvedAnimation(parent: _fadeStarController14, curve: Curves.ease);
    _fadeStarController14.repeat(reverse: true);
    //? ===============
    _fadeStarController15 =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _fadeStarAnimation15 =
        CurvedAnimation(parent: _fadeStarController15, curve: Curves.ease);
    _fadeStarController15.repeat(reverse: true);
    //? ===============
    _fadeStarController16 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeStarAnimation16 =
        CurvedAnimation(parent: _fadeStarController16, curve: Curves.ease);
    _fadeStarController16.repeat(reverse: true);
    //? ===============
    _fadeStarController17 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2500));
    _fadeStarAnimation17 = CurvedAnimation(
        parent: _fadeStarController17, curve: Curves.decelerate);
    _fadeStarController17.repeat(reverse: true);
    //? ===============
    _fadeStarController18 =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _fadeStarAnimation18 =
        CurvedAnimation(parent: _fadeStarController18, curve: Curves.ease);
    _fadeStarController18.repeat(reverse: true);
    //? ===============
    _fadeStarController19 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 3500));
    _fadeStarAnimation19 =
        CurvedAnimation(parent: _fadeStarController19, curve: Curves.ease);
    _fadeStarController19.repeat(reverse: true);
    // --------------------------------------------------
    _scaleTextLineController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    _scaleTextLineAnimation = Tween<double>(begin: 0.9, end: 1.1).animate(
        CurvedAnimation(parent: _scaleTextLineController, curve: Curves.ease));
    //? ===============
    _fadeTextLineController4 =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _fadeTextLineAnimation4 = Tween<double>(begin: 0.5, end: 1).animate(
        CurvedAnimation(parent: _fadeTextLineController4, curve: Curves.ease));

    //? ===============
    _fadeTextLineController3 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeTextLineAnimation3 = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _fadeTextLineController3, curve: Curves.bounceIn));
    _fadeTextLineAnimation3.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _fadeTextLineController4.repeat(reverse: true);
        _scaleTextLineController.repeat(reverse: true);
      }
    });
    //? ===============
    _fadeTextLineController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeTextLineAnimation2 = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _fadeTextLineController2, curve: Curves.easeIn));
    _fadeTextLineAnimation2.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _fadeTextLineController3.forward();
      }
    });
    //? ===============
    _fadeTextLineController1 =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    _fadeTextLineAnimation1 = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _fadeTextLineController1, curve: Curves.easeIn));
    _fadeTextLineController1.forward();
    _fadeTextLineAnimation1.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _fadeTextLineController2.forward();
      }
    });
    //? ===============
    // --------------------------------------------------
    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _bouncingHeartController.dispose();
    _centerRightHeartController.dispose();
    _microBounceController.dispose();
    // ---------------
    _fadeStarController1.dispose();
    _fadeStarController2.dispose();
    _fadeStarController3.dispose();
    _fadeStarController4.dispose();
    _fadeStarController5.dispose();
    _fadeStarController6.dispose();
    _fadeStarController7.dispose();
    _fadeStarController8.dispose();
    _fadeStarController9.dispose();
    _fadeStarController10.dispose();
    _fadeStarController11.dispose();
    _fadeStarController12.dispose();
    _fadeStarController13.dispose();
    _fadeStarController14.dispose();
    _fadeStarController15.dispose();
    _fadeStarController16.dispose();
    _fadeStarController17.dispose();
    _fadeStarController18.dispose();
    _fadeStarController19.dispose();
    // ---------------
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const AnimatedBackgroundColor(),
          buildAnimatedHeart1(),
          buildAnimatedHeart2(),
          buildTextColumn(),
          buildBouncingHeart(),
          // _microBounceController
          AnimatedBuilder(
            animation: _microBounceController,
            builder: (context, child) {
              return buildRotatedHeart(
                  align: Alignment.bottomRight,
                  angle: 12,
                  iconSize: _microBounceAnimation.value);
            },
          ),
          AnimatedBuilder(
            animation: _microBounceController,
            builder: (context, child) {
              return buildRotatedHeart(
                  align: Alignment.bottomLeft,
                  angle: -12,
                  iconSize: _microBounceAnimation.value);
            },
          ),
          // -------------------------------------------------------------- 19
          buildPositionedStar(
              r: size.width * 0.08,
              t: size.height * 0.2,
              controller: _fadeStarController1),
          buildPositionedStar(
              r: size.width * 0.3,
              t: size.height * 0.42,
              controller: _fadeStarController2),
          buildPositionedStar(
              r: size.width * 0.3,
              t: size.height * 0.5,
              controller: _fadeStarController3),
          buildPositionedStar(
              r: size.width * 0.3,
              t: size.height * 0.2,
              controller: _fadeStarController4),
          buildPositionedStar(
              r: 2, t: size.height * 0.36, controller: _fadeStarController5),
          buildPositionedStar(
              r: 2, t: size.height * 0.58, controller: _fadeStarController6),
          buildPositionedStar(
              l: size.width * 0.33, t: 2, controller: _fadeStarController7),
          buildPositionedStar(
              l: size.width * 0.1,
              t: size.height * 0.3,
              controller: _fadeStarController8),
          buildPositionedStar(
              l: size.width * 0.1,
              t: size.height * 0.5,
              controller: _fadeStarController9),
          buildPositionedStar(
              l: size.width * 0.3,
              t: size.height * 0.55,
              controller: _fadeStarController10),
          buildPositionedStar(
              l: size.width * 0.3,
              t: size.height * 0.14,
              controller: _fadeStarController11),
          buildPositionedStar(
              l: size.width * 0.15,
              t: size.height * 0.35,
              controller: _fadeStarController12),
          buildPositionedStar(
              l: size.width * 0.15,
              b: size.height * 0.15,
              controller: _fadeStarController13),
          buildPositionedStar(
              l: 2, b: size.height * 0.25, controller: _fadeStarController14),
          buildPositionedStar(
              l: 2, t: size.height * 0.15, controller: _fadeStarController15),
          buildPositionedStar(
              r: size.width * 0.1,
              b: size.height * 0.2,
              controller: _fadeStarController16),
          buildPositionedStar(
              r: 2, b: size.height * 0.08, controller: _fadeStarController17),
          buildPositionedStar(
              r: size.width * 0.38, b: 2, controller: _fadeStarController18),
          buildPositionedStar(
              l: size.width * 0.32, b: 15, controller: _fadeStarController19),
          // --------------------------------------------------------------
        ],
      ),
    );
  }

  Positioned buildPositionedStar({
    double? l,
    double? t,
    double? b,
    double? r,
    double angle = 0,
    required AnimationController controller,
  }) {
    return Positioned(
      left: l,
      right: r,
      top: t,
      bottom: b,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Transform.rotate(
          angle: angle * pi / 180,
          child: FadeTransition(
            opacity: controller,
            child: const Icon(Icons.star, color: Colors.yellow, size: 20),
          ),
        ),
      ),
    );
  }

  Align buildTextColumn() {
    return Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 320),
            FadeTransition(
                opacity: _fadeTextLineAnimation1,
                child: buildSecondaryText(text: "I")),
            ScaleTransition(
              scale: _scaleTextLineAnimation,
              child: FadeTransition(
                opacity: _fadeTextLineAnimation4,
                child: FadeTransition(
                    opacity: _fadeTextLineAnimation3,
                    child: buildMainText(text: "love")),
              ),
            ),
            FadeTransition(
                opacity: _fadeTextLineAnimation2,
                child: buildSecondaryText(text: "YOU")),
          ],
        ));
  }

  Text buildMainText({required String text}) {
    return Text(
      text.toUpperCase(),
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 72,
        overflow: TextOverflow.clip,
        shadows: [
          Shadow(offset: Offset(1.3, 1.3), blurRadius: 3.0, color: Colors.grey),
          Shadow(offset: Offset(2.5, 2.5), blurRadius: 8.0, color: Colors.grey),
        ],
      ),
    );
  }

  Text buildSecondaryText({
    double size = 62,
    required String text,
  }) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: size,
        overflow: TextOverflow.clip,
        color: Colors.white,
        shadows: const [
          Shadow(offset: Offset(1.3, 1.3), blurRadius: 3.0, color: Colors.grey),
          Shadow(offset: Offset(2.5, 2.5), blurRadius: 8.0, color: Colors.grey),
        ],
      ),
    );
  }

  ScaleTransition buildAnimatedHeart2() {
    return ScaleTransition(
      scale: _centerRightHeartController,
      child: const Align(
        alignment: Alignment.centerRight,
        child: Icon(Icons.favorite, color: Colors.red, size: 60),
      ),
    );
  }

  ScaleTransition buildAnimatedHeart1() {
    return ScaleTransition(
      scale: _scaleAnimation1,
      child: AlignTransition(
        alignment: _alignAnimation1,
        child: const Icon(Icons.favorite, color: Colors.red, size: 40),
      ),
    );
  }

  AnimatedBuilder buildBouncingHeart() {
    return AnimatedBuilder(
      animation: _bouncingHeartController,
      builder: (context, child) => Align(
        alignment: Alignment.topRight,
        child: Icon(Icons.favorite,
            color: Colors.red, size: _bouncingHeartAnimation.value),
      ),
    );
  }

  buildRotatedHeart({
    required Alignment align,
    required int angle,
    double iconSize = 50,
    EdgeInsets padding = const EdgeInsets.all(12.0),
  }) {
    return Align(
      alignment: align,
      child: Padding(
        padding: padding,
        child: Transform.rotate(
          angle: angle * pi / 180,
          child: Icon(Icons.favorite, color: Colors.red, size: iconSize),
        ),
      ),
    );
  }
}

class AnimatedBackgroundColor extends StatefulWidget {
  const AnimatedBackgroundColor({Key? key}) : super(key: key);

  @override
  _AnimatedBackgroundColorState createState() =>
      _AnimatedBackgroundColorState();
}

class _AnimatedBackgroundColorState extends State<AnimatedBackgroundColor> {
  List<Color> colorList = [
    Colors.pink,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  Color bottomColor = Colors.red;
  Color topColor = Colors.yellow;
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() => bottomColor = Colors.blue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      onEnd: () {
        setState(() {
          index = index + 1;
          bottomColor = colorList[index % colorList.length];
          topColor = colorList[(index + 1) % colorList.length];
        });
      },
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: begin,
          end: end,
          colors: [bottomColor, topColor],
        ),
      ),
    );
  }
}
