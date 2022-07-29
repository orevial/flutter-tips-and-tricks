import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';
import 'package:flutters_tips_and_tricks/pages/courses.page.dart';

import 'test_utils.dart';

void main() {
  final samplePages = List.generate(
    6,
    (index) => CoursePage(
      name: 'page $index',
      content: 'content page $index',
    ),
  );
  final sampleCourses = [
    Course(
      id: 'test-course-1',
      name: 'Unstarted course',
      pages: samplePages,
    ),
    Course(
      id: 'test-course-2',
      name: 'Course in progress',
      pages: samplePages,
    ),
    Course(
      id: 'test-course-3',
      name: 'Terminated course',
      pages: samplePages,
    )
  ];
  const sampleCoursesProgresses = [
    UserProgress(courseId: 'test-course-1', currentPage: 0, isOver: false),
    UserProgress(courseId: 'test-course-2', currentPage: 2, isOver: false),
    UserProgress(courseId: 'test-course-3', currentPage: 5, isOver: true),
  ];

  testWidgets('course tile should contain course name', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CourseTile(sampleCourses.first, sampleCoursesProgresses),
        ),
      ),
    );
    expect(find.text('Unstarted course'), findsOneWidget);
  });

  for (final theme in themes.entries) {
    for (final device in devices) {
      testWidgets(
        'course tiles should be displayed with title, icon and progress bar - ${theme.key} theme on ${device.name}',
        (tester) async {
          // Load fonts so display is correct
          await tester.runAsync(() => loadFonts());

          // Set screen size for test rendering
          await device.setScreenSize(tester);

          // Actually load the widget
          await tester.pumpWidget(
            MaterialApp(
              theme: theme.value,
              home: Scaffold(
                body: ListView(
                  children: sampleCourses
                      .map(
                        (course) => CourseTile(course, sampleCoursesProgresses),
                      )
                      .toList(),
                ),
              ),
            ),
          );
          await tester.pumpAndSettle();

          // Evaluate result against golden
          await expectLater(
            find.byType(Scaffold),
            matchesGoldenFile(
              'golden/course-tiles-${theme.key}-${device.name.toLowerCase()}.jpg',
            ),
          );
        },
      );
    }
  }
}
