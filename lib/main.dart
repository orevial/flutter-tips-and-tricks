import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/courses.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CoursesPage(),
    );
  }
}
