import 'package:flutter/material.dart';

import 'core_widgets_practice.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
            primaryColor: Colors.yellow,
            primarySwatch: Colors.green,
            scaffoldBackgroundColor: Colors.blue.shade100,
            // buttonTheme: ButtonThemeData(
            //   buttonColor: Colors.yellow.shade50,
            // )
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow.shade400,
                foregroundColor: Colors.blue,
            )
            )
      ),
      title: 'Flutter Basics',

      //home: Home(),

      home: CoreWidgetsPractice(),
    );
  }
}