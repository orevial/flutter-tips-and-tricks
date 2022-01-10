import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/course_details.page.dart';
import 'package:flutters_tips_and_tricks/utils/courses_utils.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          for (dynamic course in completeCourses)
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => CourseDetailsPage(course: course),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  course['name'],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
