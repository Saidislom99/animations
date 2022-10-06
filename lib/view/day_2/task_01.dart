import 'package:flutter/material.dart';

class Task01 extends StatefulWidget {
  const Task01({Key? key}) : super(key: key);

  @override
  State<Task01> createState() => _Task01State();
}

class _Task01State extends State<Task01>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<double> _rotationAnimation;
  bool isLike=false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..forward();

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
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
        actions: [
          Icon(Icons.favorite, size: 45,color: isLike? Colors.red: Colors.white,)
        ],
        title: const Text("Abs"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 220,
              color: Colors.red,
              child: AlignTransition(
                alignment: _alignAnimation,
                child: RotationTransition(
                  turns: _rotationAnimation,
                  child: Container(
                    color: Colors.black,
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
            ),
            TextButton(onPressed: (){
              isLike=!isLike;
              setState((){});

            }, child: Text("Press"))
          ],
        ),
      ),
    );
  }
}