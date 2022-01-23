import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/course_progress.dart';
import 'package:flutters_tips_and_tricks/courses.model.dart';
import 'package:flutters_tips_and_tricks/courses.page.dart';
import 'package:flutters_tips_and_tricks/settings_modal.dart';
import 'package:flutters_tips_and_tricks/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

late final Provider<SharedPreferences> prefsProvider;

late final themeProvider = StateProvider<ThemeMode>((ref) {
  final prefs = ref.watch(prefsProvider);
  return themeModeFromString(prefs.getString('theme_mode'));
});

late final coursesProgressProvider =
    StateNotifierProvider<CourseProgress, List<UserProgress>>(
  (ref) {
    final prefs = ref.watch(prefsProvider);
    final progresses = prefs
        .getKeys()
        .where((key) => key.startsWith('course_'))
        .map((key) => UserProgress.fromJson(jsonDecode(prefs.getString(key)!)))
        .toList();
    return CourseProgress(progresses);
  },
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefsProvider = Provider((_) => prefs);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter training',
      themeMode: ref.watch(themeProvider.state).state,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      home: const CoursesPage(),
    );
  }
}
