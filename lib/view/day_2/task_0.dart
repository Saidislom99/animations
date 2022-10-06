import 'package:flutter/material.dart';

class Task0 extends StatefulWidget {
  const Task0({Key? key}) : super(key: key);

  @override
  State<Task0> createState() => _Task0State();
}

class _Task0State extends State<Task0>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late Animation<double> sizeAnimation;
  bool  isChange=false;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    sizeAnimation =
        Tween<double>(begin: 100.0, end: 300.0).animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });



    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.ease,
      ),
    );




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
      appBar: AppBar(
        title: const Text("(----)"),
      ),
      body:Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: AlignTransition(
            alignment:  _alignAnimation,
            child: Container(
              color: Colors.blue,
              height: sizeAnimation.value,
              width: sizeAnimation.value,
            )
        ),
      ),
    );
  }
}
