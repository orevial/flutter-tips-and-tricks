import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/main.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Utilise mockito pour vérifier le nombre de fois que un provider notifie ses dépendences
class Listener extends Mock {
  void call(List<UserProgress>? previous, List<UserProgress> value);
}

void main() {
  Future<void> setupSharedPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefsProvider = Provider((_) => prefs);
  }

  test('is created empty at first', () async {
    SharedPreferences.setMockInitialValues({});
    await setupSharedPrefs();

    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    // Listen to our Riverpod provider
    container.listen<List<UserProgress>>(
      coursesProgressProvider,
      listener,
      fireImmediately: true,
    );

    // Verify that initial state contains our saved course from shared prefs
    verify(listener(null, [])).called(1);
    verifyNoMoreInteractions(listener);
  });

  test('is created with saved user progresses', () async {
    SharedPreferences.setMockInitialValues({
      'course_test-1': jsonEncode(
        const UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ).toJson(),
      ),
    });
    await setupSharedPrefs();

    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    // Listen to our Riverpod provider
    container.listen<List<UserProgress>>(
      coursesProgressProvider,
      listener,
      fireImmediately: true,
    );

    // Verify that initial state contains our saved course from shared prefs
    verify(
      listener(null, [
        const UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
      ]),
    ).called(1);
    verifyNoMoreInteractions(listener);

    // Add progress for a new course
    container
        .read(coursesProgressProvider.notifier)
        .updateCourseProgress('another-course', 4, isOver: true);

    // Verify that new state includes both initial course and newly updated course
    verify(
      listener([
        const UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
      ], [
        const UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
        const UserProgress(
          courseId: 'another-course',
          currentPage: 4,
          isOver: true,
        ),
      ]),
    ).called(1);
    verifyNoMoreInteractions(listener);

    // Update progress of an already saved course
    container
        .read(coursesProgressProvider.notifier)
        .updateCourseProgress('test-1', 5, isOver: false);

    // Verify that new state includes both initial course and newly updated course
    verify(
      listener([
        const UserProgress(
          courseId: 'test-1',
          currentPage: 2,
          isOver: false,
        ),
        const UserProgress(
          courseId: 'another-course',
          currentPage: 4,
          isOver: true,
        ),
      ], [
        const UserProgress(
          courseId: 'test-1',
          currentPage: 5,
          isOver: false,
        ),
        const UserProgress(
          courseId: 'another-course',
          currentPage: 4,
          isOver: true,
        ),
      ]),
    ).called(1);
    verifyNoMoreInteractions(listener);
  });
}
