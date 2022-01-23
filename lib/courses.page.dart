import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/course_details.page.dart';
import 'package:flutters_tips_and_tricks/courses.model.dart';
import 'package:flutters_tips_and_tricks/main.dart';
import 'package:flutters_tips_and_tricks/settings_modal.dart';
import 'package:flutters_tips_and_tricks/utils/courses_utils.dart';

class CoursesPage extends ConsumerWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Utilisation de notre donnée locale (mockée)
    final courses = Courses.fromJson(completeCourses).courses;
    final progresses = ref.watch(coursesProgressProvider);
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(),
            SizedBox(
              width: 10,
            ),
            // ℹ️ 👁‍🗨 TIP: Toujours rajouter une virgule après le dernier élément d'une liste de widgets pour aider le formattage de dartfm !
            Text('Flutter courses'),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.light_mode),
            onPressed: () async {
              final newTheme = await showDialog(
                context: context,
                builder: (context) => const SettingsModal(),
              ) as ThemeMode?;
              if (newTheme != null) {
                ref.read(themeProvider.state).state = newTheme;
                ref.read(prefsProvider).setString('theme_mode', newTheme.name);
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // ℹ️ 👁‍🗨 Concept intéressant en Dart : la possibilité de déclarer
          // des boucles for ou des conditions if à l'intérieur d'une liste
          for (Course course in courses)
            if (course.id != 'do_not_put_there')
              _courseTile(
                context,
                ref,
                course,
                progresses,
              ),
        ],
      ),
    );
  }
}

Widget _courseTile(
  BuildContext context,
  WidgetRef ref,
  Course course,
  List<UserProgress> progresses,
) {
  final courseProgress = progresses.firstWhere(
    (p) => p.courseId == course.id,
    orElse: () => UserProgress(
      courseId: course.id,
      currentPage: 0,
      isOver: false,
    ),
  );

  final double progressPercentage =
      courseProgress.progressPercentage(course.pages.length);
  final initialPage = courseProgress.isOver ? 0 : courseProgress.currentPage;
  final IconData icon = courseProgress.icon(course.pages.length);

  // ℹ️ 👁‍🗨 On peut imbriquer des méthodes en Dart (nested)
  Widget _tile() {
    return ListTile(
      trailing: Container(
        decoration: BoxDecoration(
          color: progressPercentage > 0 ? Colors.green.shade800 : Colors.blue,
          shape: BoxShape.circle,
        ),
        width: 40,
        height: 40,
        child: Center(
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
      ),
      title: Text(course.name),
    );
  }

  Widget _progressBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green.shade200,
          Colors.green.shade800,
          Colors.transparent,
        ], stops: [
          0,
          progressPercentage,
          progressPercentage,
        ]),
      ),
      height: 5,
      width: double.infinity,
    );
  }

  return InkWell(
    onTap: () {
      if (courseProgress.isOver) {
        ref
            .read(coursesProgressProvider.notifier)
            .updateCourseProgress(course.id, initialPage, false);
      }
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => CourseDetailsPage(
            course: course,
            initialPage: initialPage,
          ),
        ),
      );
    },
    child: Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _tile(),
          _progressBar(),
        ],
      ),
    ),
  );
}
