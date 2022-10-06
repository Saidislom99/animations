import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEXT STYLE"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text(
                "HELLO FLUTTER ...",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          IconButton(onPressed:  () {
            setState(() {
              _fontSize = _first ? 70 : 25;
              _color = _first ? Colors.blue : Colors.red;
              _first = !_first;
            });
          }, icon: Icon(Icons.arrow_back_ios))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _fontSize = _first ? 25 : 75;
            _color = _first ? Colors.red : Colors.blue;
            _first = !_first;
          });
        },
        child: Text("Press!"),
      ),
    );
  }
}
