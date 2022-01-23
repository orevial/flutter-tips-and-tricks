import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutters_tips_and_tricks/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('end-to-end test', (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    // Make sure courses page is displayed with expected elements
    expect(find.text('State management'), findsOneWidget);

    // Tap on a course
    await tester.tap(find.text('Flutter setup'));
    await tester.pumpAndSettle();

    // Make sure first page content is displayed
    expect(find.text('Install Flutter SDK'), findsOneWidget);

    // Swipe to last page
    await tester.drag(
      find.text('Install Flutter SDK'),
      const Offset(-200, 0),
    );
    await tester.pumpAndSettle();
    await tester.drag(
      find.text('Install target platform SDK'),
      const Offset(-200, 0),
    );
    await tester.pumpAndSettle();

    // Make sure terminate floating action button is displayed
    expect(find.byKey(const Key('terminate-course-fab')), findsOneWidget);

    // Tap on previous fab
    await tester.tap(find.byKey(const Key('terminate-course-fab')));
    await tester.pumpAndSettle();

    // Make sure we are back to courses page
    expect(find.text('Navigation'), findsOneWidget);
  });
}
