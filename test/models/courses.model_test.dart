import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';

import '../test_utils.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool canDeletePost = true;
    const String user = 'Devoxx';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Hello $user'),
        if (canDeletePost) Icon(Icons.delete),
      ],
    );
  }
}

void main() {
  testWidgets(
    'test widget',
    (tester) async {
      // Load fonts so display is correct
      await tester.runAsync(() => loadFonts());

      // Actually load the widget
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TestWidget(),
          ),
        ),
      );
      await tester.pumpAndSettle();

      // Evaluate result against golden
      await expectLater(
        find.byType(Scaffold),
        matchesGoldenFile('golden/test-widget.jpg'),
      );
    },
  );

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
