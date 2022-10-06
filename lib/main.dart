import 'package:animations/constants.dart';
import 'package:animations/teacher_work/screens/home_screen.dart';
import 'package:animations/teacher_work/screens/router.dart';
import 'package:animations/view/day_2/task_0.dart';
import 'package:animations/view/day_2/task_01.dart';
import 'package:animations/view/day_2/task_1.dart';
import 'package:animations/view/day_2/task_2.dart';
import 'package:animations/view/day_2/task_3.dart';
import 'package:animations/view/day_2/task_4.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:  false,
     initialRoute: homeRoute,
      onGenerateRoute: MyRouter.generateRoute,
     //  home:  HomeScreen(),
    );
  }
}


// Image.asset("assets/images/paris.jpg"),

