import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_list_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_progress_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/courses.api.dart';
import 'package:flutters_tips_and_tricks/courses/courses.page.dart';
import 'package:flutters_tips_and_tricks/theme/bloc/theme_bloc.dart';
import 'package:flutters_tips_and_tricks/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CourseListBloc(CoursesApi())),
        BlocProvider(create: (context) => CourseProgressBloc()),
        BlocProvider(create: (context) => ThemeBloc()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => MaterialApp(
          title: 'Flutter training',
          themeMode: state.mode,
          theme: lightThemeData,
          darkTheme: darkThemeData,
          home: const CoursesPage(),
        ),
      ),
    );
  }
}
