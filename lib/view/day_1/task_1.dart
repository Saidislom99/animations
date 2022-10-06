import 'dart:math';

import 'package:flutter/material.dart';

class ExampleFourth extends StatefulWidget {
  const ExampleFourth({Key? key}) : super(key: key);

  @override
  State<ExampleFourth> createState() => _ExampleFourthState();
}

class _ExampleFourthState extends State<ExampleFourth>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController animationController2;
  late CurvedAnimation curvedAnimation;
  late Animation animation;
  late Animation animation2;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animationController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 6));

    curvedAnimation = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceIn,
      reverseCurve: Curves.bounceIn,
    );

    animation =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(animationController);
    animationController.addListener(() {
      setState(() {});
    });

    animation2 =
        Tween<double>(begin: 0.0, end: 2 * pi).animate(animationController2);
    animationController.addListener(() {
      setState(() {});
    });

    animationController.repeat(reverse: true);
     animationController2.repeat(reverse: true);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("01"),
        ),
        body: Stack(
          children: [
          Align(
          alignment: Alignment.center,
          child: Transform.rotate(
            angle: animation.value,
            child: Center(
              child: Image.asset("assets/images/paris.jpg"),
            ),
          ),
        ),
          Align(
            alignment: Alignment.center,
            child: Transform.rotate(
                angle: animation2.value,
                child: Container(
                  width: 350,
                  height: 200,
                  color: Colors.grey,
                )
            ),
            ),
            ]
        )

    );
  }
}