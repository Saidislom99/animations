import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity"),
      ),
      body: Center(
        child: AnimatedOpacity(
            opacity: opacityLevel,
            duration: const Duration(seconds: 3),
            curve: Curves.decelerate,
            child:  Container(
              color: Colors.green,
              height: 200,
              width: 200,
            )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeOpacity,
        child: const Text('Press'),
      ),
    );
  }
}
