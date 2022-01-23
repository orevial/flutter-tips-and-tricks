import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';

void main() {
  group('UserProgress percentage', () {
    test('is 0 when course has not started', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 0,
        isOver: false,
      );
      expect(progress.progressPercentage(3), 0.0);
    });

    test('is 0 when course has no pages', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 2,
        isOver: false,
      );
      expect(progress.progressPercentage(0), 0.0);
    });

    test('is calculated when course is in progress', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 3,
        isOver: false,
      );
      expect(progress.progressPercentage(6), 0.5);
    });

    test('is 1 when course is over', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 2,
        isOver: true,
      );
      expect(progress.progressPercentage(3), 1.0);
    });
  });

  group('UserProgress icon', () {
    test('is school when course has not start', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 0,
        isOver: false,
      );
      expect(progress.icon(3), Icons.school);
    });

    test('is play arrow when course is in progress', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 3,
        isOver: false,
      );
      expect(progress.icon(6), Icons.play_arrow);
    });

    test('is restart when course is over', () {
      const progress = UserProgress(
        courseId: 'any',
        currentPage: 2,
        isOver: true,
      );
      expect(progress.icon(3), Icons.restart_alt);
    });
  });
}
