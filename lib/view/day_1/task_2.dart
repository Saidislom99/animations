import 'package:flutter/material.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  bool selected1 = false;
  bool selected2 = false;
  bool selected3 = false;
  bool selected4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedPositioned"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 550,
          color: Colors.grey,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                top: selected1 ? 50.0 : 180.0,
                bottom: selected2 ? 50.0 : 180.0,
                right: selected4 ? 10:100,
                left: selected3 ? 10: 100,

                duration: const Duration(seconds: 2),
                curve: Curves.bounceIn,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.red,
                  ),

                ),
              ),
              Positioned(
                  bottom: 50,
                  right: MediaQuery.of(context).size.width/3,
                  child: IconButton(icon: Icon(Icons.upload,size: 20, color: Colors.black,), onPressed: () {

                    selected1=!selected1;
                    setState((){});
                  },)),
              Positioned(
                  bottom: 25,
                  right: MediaQuery.of(context).size.width/3,
                  child: IconButton(icon: Icon(Icons.download,size: 20, color: Colors.black,), onPressed: () {
                    selected2=!selected2;
                    setState((){});

                  },)),
              Positioned(
                  bottom: 35,
                  right: MediaQuery.of(context).size.width/4,
                  child: IconButton(icon: Icon(Icons.add,size: 20, color: Colors.black,), onPressed: () {

                    selected4=!selected4;
                    setState((){});
                  },)),
              Positioned(
                  bottom: 35,
                  right: MediaQuery.of(context).size.width/2.5,
                  child: IconButton(icon: Icon(Icons.add,size: 20, color: Colors.black,), onPressed: () {
                    selected3=!selected3;
                    setState((){});
                  },)),



            ],
          ),
        ),
      ),
    );
  }
}