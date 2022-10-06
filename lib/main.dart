import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/courses/courses.page.dart';
import 'package:flutters_tips_and_tricks/utils/theme.dart';
import 'package:flutters_tips_and_tricks/utils/theme.state.dart';
import 'package:shared_preferences/shared_preferences.dart';

const coursesSnippetUrl =
    'https://gitlab.com/stack-labs/oss/flutter-tips-and-tricks/-/snippets/2233566/raw/main/courses.json';

late Provider<SharedPreferences> prefsProvider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefsProvider = Provider((_) => prefs);

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

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
