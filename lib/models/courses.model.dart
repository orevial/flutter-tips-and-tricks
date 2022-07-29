import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses.model.g.dart';

part 'courses.model.freezed.dart';

@freezed
class CourseResponse with _$CourseResponse {
  const factory CourseResponse({required List<Course> courses}) =
      _CourseResponse;

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}

@freezed
class Course with _$Course {
  const factory Course({
    required String id,
    required String name,
    required List<CoursePage> pages,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}

@freezed
class CoursePage with _$CoursePage {
  const factory CoursePage({
    required String name,
    required String content,
  }) = _CoursePage;

  factory CoursePage.fromJson(Map<String, dynamic> json) =>
      _$CoursePageFromJson(json);
}

@freezed
class UserProgress with _$UserProgress {
  const factory UserProgress({
    required String courseId,
    required int currentPage,
    required bool isOver,
  }) = _UserProgress;

  const UserProgress._();

  factory UserProgress.fromJson(Map<String, dynamic> json) =>
      _$UserProgressFromJson(json);

  double progressPercentage(int coursesPages) {
    if (isOver) {
      return 1.0;
    } else if (currentPage == 0 || coursesPages == 0) {
      return 0.0;
    } else {
      return currentPage / coursesPages;
    }
  }

  IconData icon(int coursePages) {
    if (isOver) {
      return Icons.restart_alt;
    } else if (progressPercentage(coursePages) == 0.0) {
      return Icons.school;
    } else {
      return Icons.play_arrow;
    }
  }
}
