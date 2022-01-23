import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Courses {
  final List<Course> courses;

  Courses({required this.courses});

  factory Courses.fromJson(List<dynamic> json) {
    return Courses(
        courses: json
            .map((course) => Course.fromJson(course as Map<String, dynamic>))
            .toList());
  }
}

class Course {
  final String id;
  final String name;
  final List<CoursePage> pages;

  Course({required this.id, required this.name, required this.pages});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        name: json['name'],
        pages: (json['pages'] as List<dynamic>)
            .map((page) => CoursePage.fromJson(page as Map<String, dynamic>))
            .toList());
  }
}

class CoursePage {
  final String name;
  final String content;

  CoursePage({required this.name, required this.content});

  factory CoursePage.fromJson(Map<String, dynamic> json) {
    return CoursePage(
      name: json['name'],
      content: json['content'],
    );
  }
}

class UserProgress extends Equatable {
  final String courseId;
  final int currentPage;
  final bool isOver;

  const UserProgress({
    required this.courseId,
    required this.currentPage,
    required this.isOver,
  });

  factory UserProgress.fromJson(Map<String, dynamic> json) {
    return UserProgress(
      courseId: json['courseId'],
      currentPage: json['currentPage'],
      isOver: json['isOver'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'courseId': courseId,
      'currentPage': currentPage,
      'isOver': isOver,
    };
  }

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

  @override
  List<Object?> get props => [courseId, currentPage, isOver];
}
