import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_list_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_progress_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/courses.page.dart';
import 'package:flutters_tips_and_tricks/di/di_initializer.dart';
import 'package:flutters_tips_and_tricks/theme/bloc/theme_bloc.dart';
import 'package:flutters_tips_and_tricks/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<CourseListBloc>()),
        BlocProvider(create: (context) => getIt<CourseProgressBloc>()),
        BlocProvider(create: (context) => getIt<ThemeBloc>()),
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