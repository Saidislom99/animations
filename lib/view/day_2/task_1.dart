import 'package:flutter/material.dart';

class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  double padValue = 0.0;

  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Opacity+Padding"),
      ),
      body: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset("assets/images/paris.jpg"),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
        },
        child: const Text('Press'),
      ),
    );
  }
}
