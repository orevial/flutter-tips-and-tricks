import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutters_tips_and_tricks/pages/course_details.page.dart';
import 'package:flutters_tips_and_tricks/models/courses.model.dart';
import 'package:flutters_tips_and_tricks/main.dart';
import 'package:flutters_tips_and_tricks/pages/settings_modal.dart';
import 'package:flutters_tips_and_tricks/utils/courses_utils.dart';

class CoursesPage extends ConsumerWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Utilisation de notre donnée locale (mockée)
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
      body: _buildContent(context, ref),
    );
  }
}

Widget _buildContent(
  BuildContext context,
  WidgetRef ref,
) {
  AsyncValue<CourseResponse> courses = ref.watch(coursesProvider);
  final progresses = ref.watch(coursesProgressProvider);

  return courses.when(
    data: (data) {
      return ListView(
        children: [
          for (Course course in data.courses)
            if (course.id != 'do_not_put_there')
              CourseTile(
                course,
                progresses,
              ),
        ],
      );
    },
    error: (e, __) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text('Err: $e'),
    ),
    loading: () => const Center(
      child: CircularProgressIndicator(),
    ),
  );
}

class CourseTile extends ConsumerWidget {
  final Course course;
  final List<UserProgress> progresses;

  const CourseTile(
    this.course,
    this.progresses, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
}
