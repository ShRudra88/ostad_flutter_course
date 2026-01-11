import 'package:flutter/material.dart';
import 'package:flutter_basics/topics/stack_practice.dart';
import 'package:flutter_basics/topics/widgetsPractice2.dart';
import 'package:flutter_basics/topics/widgets_practice.dart';

import 'topics/core_widgets_practice.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      //       primaryColor: Colors.yellow,
      //       primarySwatch: Colors.green,
      //       scaffoldBackgroundColor: Colors.blue.shade100,
      //       // buttonTheme: ButtonThemeData(
      //       //   buttonColor: Colors.yellow.shade50,
      //       // )
      //       elevatedButtonTheme: ElevatedButtonThemeData(
      //         style: ElevatedButton.styleFrom(
      //           backgroundColor: Colors.yellow.shade400,
      //           foregroundColor: Colors.blue,
      //       )
      //       )
      // ),
      title: 'Flutter Basics',

      //home: Home(),

      //home: CoreWidgetsPractice(),

      //home: StackPractice(),

      //home: WidgetsPractice(), // date 1 jan 2026 - module 12
      home: WidgetsPractice2(), // date 11 jan 2026 - module 12
    );
  }
}