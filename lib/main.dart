import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/course_progress.dart';
import 'package:flutters_tips_and_tricks/courses.model.dart';
import 'package:flutters_tips_and_tricks/courses.page.dart';

late final coursesProgressProvider =
    StateNotifierProvider<CourseProgress, List<UserProgress>>(
  (ref) => CourseProgress([]),
);

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
