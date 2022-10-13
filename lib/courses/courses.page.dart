import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_list_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/bloc/course_progress_bloc.dart';
import 'package:flutters_tips_and_tricks/courses/course_details.page.dart';
import 'package:flutters_tips_and_tricks/courses/courses.model.dart';
import 'package:flutters_tips_and_tricks/localization/build_context_extension.dart';
import 'package:flutters_tips_and_tricks/settings/settings_modal.dart';
import 'package:flutters_tips_and_tricks/theme/bloc/theme_bloc.dart';
import 'package:flutters_tips_and_tricks/widgets/page_content_error.widget.dart';
import 'package:flutters_tips_and_tricks/widgets/page_content_loading.widget.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Utilisation de notre donnée locale (mockée)
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(),
            const SizedBox(width: 10),
            Text(context.translations.course.list.title),
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
                context.read<ThemeBloc>().add(ThemeEvent.update(newTheme));
              }
            },
          ),
        ],
      ),
      body: BlocBuilder<CourseListBloc, CourseListState>(
        builder: (context, state) => state.map(
          initial: (state) => const SizedBox(),
          loading: (state) => const PageContentLoading(),
          content: (state) => _CourseListContent(state.courses),
          error: (state) => PageContentError(
            onRetry: () => context
                .read<CourseListBloc>()
                .add(const CourseListEvent.retry()),
          ),
        ),
      ),
    );
  }
}

class _CourseListContent extends StatelessWidget {
  final CourseResponse courses;

  const _CourseListContent(this.courses);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseProgressBloc, CourseProgressState>(
      builder: (context, state) {
        final progresses = state.maybeMap(
          content: (content) => content.userProgresses,
          orElse: () => <UserProgress>[],
        );
        return ListView(
          children: [
            for (Course course in courses.courses)
              if (course.id != 'do_not_put_there')
                CourseTile(
                  course,
                  progresses,
                ),
          ],
        );
      },
    );
  }
}

class CourseTile extends StatelessWidget {
  final Course course;
  final List<UserProgress>? progresses;

  const CourseTile(this.course, this.progresses);

  @override
  Widget build(BuildContext context) {
    final courseProgress = progresses?.firstWhere(
          (p) => p.courseId == course.id,
          orElse: () => UserProgress.defaultProgress(course.id),
        ) ??
        UserProgress.defaultProgress(course.id);

    final double progressPercentage =
        courseProgress.progressPercentage(course.pages.length);
    final initialPage = courseProgress.isOver ? 0 : courseProgress.currentPage;
    final IconData icon = courseProgress.icon(course.pages.length);

    Widget tile() {
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

    Widget progressBar() {
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green.shade200,
              Colors.green.shade800,
              Colors.transparent,
            ],
            stops: [
              0,
              progressPercentage,
              progressPercentage,
            ],
          ),
        ),
        height: 5,
        width: double.infinity,
      );
    }

    return InkWell(
      onTap: () {
        if (courseProgress.isOver) {
          context.read<CourseProgressBloc>().add(
                CourseProgressEvent.updateProgress(
                  course.id,
                  initialPage,
                  isOver: false,
                ),
              );
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
            tile(),
            progressBar(),
          ],
        ),
      ),
    );
  }
}
