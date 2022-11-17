import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:flutters_tips_and_tricks/courses/course_details.page.dart';
import 'package:flutters_tips_and_tricks/courses/courses.page.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@lazySingleton
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: CoursesPage, initial: true),
    AutoRoute(page: CourseDetailsPage),
  ],
)
class AppRouter extends _$AppRouter {}
