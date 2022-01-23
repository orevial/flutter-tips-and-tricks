import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/state/course_progress.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';
import 'package:flutters_tips_and_tricks/pages/courses.page.dart';
import 'package:flutters_tips_and_tricks/pages/settings_modal.dart';
import 'package:flutters_tips_and_tricks/utils/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

const coursesSnippetUrl =
    'https://gitlab.com/stack-labs/oss/flutter-tips-and-tricks/-/snippets/2233566/raw/main/courses.json';

late Provider<SharedPreferences> prefsProvider;

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
    return CourseProgress(prefs, progresses);
  },
);

late final coursesProvider = FutureProvider((_) async {
  return http
      .get(Uri.parse(coursesSnippetUrl))
      .then((response) => response.body)
      .then((data) => jsonDecode(data))
      .then((json) => CourseResponse.fromJson(json));
});

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
