import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/courses/course_progress.model.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:flutters_tips_and_tricks/main.dart';
import 'package:http/http.dart' as http;

final coursesProgressProvider =
    StateNotifierProvider<CourseProgress, List<UserProgress>>(
  (ref) {
    final prefs = ref.watch(prefsProvider);
    final progresses = prefs
        .getKeys()
        .where((key) => key.startsWith('course_'))
        .map(
          (key) => UserProgress.fromJson(
            jsonDecode(prefs.getString(key)!) as Map<String, dynamic>,
          ),
        )
        .toList();
    return CourseProgress(prefs, progresses);
  },
);

final coursesProvider = FutureProvider((_) async {
  return http
      .get(Uri.parse(coursesSnippetUrl))
      .then((response) => response.body)
      .then((data) => jsonDecode(data))
      .then((json) => CourseResponse.fromJson(json as Map<String, dynamic>));
});
