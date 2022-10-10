import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_progress_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Listener extends Mock {
  void call(List<UserProgress>? previous, List<UserProgress> value);
}

void main() {
  blocTest<CourseProgressBloc, CourseProgressState>(
    'is created empty at first',
    setUp: () {
      SharedPreferences.setMockInitialValues({});
    },
    build: () => CourseProgressBloc(),
    expect: () => [
      const CourseProgressState.content([]),
    ],
  );

  blocTest<CourseProgressBloc, CourseProgressState>(
    'is created with saved user progresses',
    setUp: () {
      SharedPreferences.setMockInitialValues({
        'course_test-1': jsonEncode(
          const UserProgress(
            courseId: 'test-1',
            currentPage: 2,
            isOver: false,
          ).toJson(),
        ),
      });
    },
    build: () => CourseProgressBloc(),
    act: (bloc) async {
      bloc.add(
        const CourseProgressEvent.updateProgress(
          'another-course',
          4,
          isOver: true,
        ),
      );
      await Future.delayed(const Duration(milliseconds: 1));
      bloc.add(
        const CourseProgressEvent.updateProgress(
          'test-1',
          5,
          isOver: false,
        ),
      );
    },
    expect: () => [
      const CourseProgressState.content([
        UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
      ]),
      const CourseProgressState.content([
        UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
        UserProgress(
          courseId: 'another-course',
          currentPage: 4,
          isOver: true,
        ),
      ]),
      const CourseProgressState.content([
        UserProgress(
          courseId: 'test-1',
          currentPage: 5,
          isOver: false,
        ),
        UserProgress(
          courseId: 'another-course',
          currentPage: 4,
          isOver: true,
        ),
      ]),
    ],
  );
}
