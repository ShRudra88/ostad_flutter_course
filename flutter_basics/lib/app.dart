import 'package:flutter/material.dart';

import 'core_widgets_practice.dart';
import 'home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics',
      home: CoreWidgetsPractice(),
    );
  }
}