import 'package:animations/teacher_work/screens/task_screen.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../view/day_1/task_1.dart';
import '../../view/day_1/task_2.dart';
import 'example_19.dart';
import 'example_20.dart';
import 'example_21.dart';
import 'example_22.dart';
import 'example_8dart';
import 'example_18.dart';
import 'example_11.dart';
import 'example_15.dart';
import 'example_5.dart';
import 'example_14.dart';
import 'example_9.dart';
import 'example_1.dart';
import 'example_7.dart';
import 'example_17.dart';
import 'example_6.dart';
import 'example_16.dart';
import 'example_10.dart';
import 'example_13.dart';
import 'example_12.dart';
import 'example_2.dart';
import 'home_screen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case firstScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleOne());
      case secondScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwo());
      case thirdScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThree());
      case fourthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFourth());
      case fifthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFive());
      case sixthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSix());
      case seventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeven());
      case eighthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEight());
      case ninthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleNine());
      case tenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTen());
      case eleventhScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEleven());
      case twelveScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleTwelve());
      case thirteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleThirteen());
      case fourteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExplicitFourteen());
      case fifteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleFifteen());
      case sixteenScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSixteen());
      case seventeenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleSeventeen());
      case eighteenthScreenRoute:
        return MaterialPageRoute(builder: (_) => ExampleEighteen());
      case nineteenthScreenRoute:
        return MaterialPageRoute(builder: (_) => Example19());
      case twentyScreenRoute:
        return MaterialPageRoute(builder: (_) => Example20());
      case twentyFirstScreenRoute:
        return MaterialPageRoute(builder: (_) => Example21());
      case taskScreenRoute:
        return MaterialPageRoute(builder: (_) => TaskScreen());

      case twentySecondScreenRoute:
        return MaterialPageRoute(builder: (_) => Example22());



      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
