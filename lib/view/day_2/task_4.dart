import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _Task4State();
}

class _Task4State extends State<Task4>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final Animation<AlignmentGeometry> _alignAnimation;
  late final Animation<AlignmentGeometry> _alignAnimation2;
  late final Animation<double> _rotationAnimation;
  bool  isChange=false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _alignAnimation = Tween<AlignmentGeometry>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceIn,
      ),
    );

    _alignAnimation2 = Tween<AlignmentGeometry>(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.bounceIn,
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
        title: const Text("AlignTransition"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 270,
              width: 200,
              color: Colors.grey,
              child: AlignTransition(
                  alignment: isChange ?  _alignAnimation2: _alignAnimation,
                  child: Text("TEXT",style: TextStyle(fontWeight: FontWeight.bold),)
              ),
            ),
          ),
          TextButton(onPressed: (){

            setState((){
              isChange=!isChange;


            });


          }, child: Text("Change Aligment"))

        ],
      ),
    );
  }
}
