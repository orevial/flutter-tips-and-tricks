import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CourseProgress extends StateNotifier<List<UserProgress>> {
  CourseProgress(List<UserProgress> initialCoursesProgress)
      : super(initialCoursesProgress);

  void updateCourseProgress(String courseId, int currentPage, bool isOver) {
    _saveCourseProgress(UserProgress(
      courseId: courseId,
      currentPage: currentPage,
      isOver: isOver,
    ));
    if (state.any((c) => c.courseId == courseId)) {
      state = [
        for (final progress in state)
          if (progress.courseId == courseId)
            // ℹ️ 👁‍🗨 Pas très pratique ici de recréer tout l'objet alors qu'on garde une certaine partie
            UserProgress(
              courseId: courseId,
              currentPage: currentPage,
              isOver: isOver,
            )
          else
            progress,
      ];
    } else {
      state = [
        // ℹ️ 👁‍🗨 On utilise le spread operator ici
        ...state,
        UserProgress(
          courseId: courseId,
          currentPage: currentPage,
          isOver: isOver,
        )
      ];
    }
  }

  void _saveCourseProgress(UserProgress progress) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(
        'course_${progress.courseId}', jsonEncode(progress.toJson()));
  }
}
