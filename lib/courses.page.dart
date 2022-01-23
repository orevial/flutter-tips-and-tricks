import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/course_details.page.dart';
import 'package:flutters_tips_and_tricks/courses.model.dart';
import 'package:flutters_tips_and_tricks/utils/courses_utils.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Utilisation de notre donnée locale (mockée)
    final courses = Courses.fromJson(completeCourses).courses;
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
      ),
      body: ListView(
        children: [
          // ℹ️ 👁‍🗨 Concept intéressant en Dart : la possibilité de déclarer
          // des boucles for ou des conditions if à l'intérieur d'une liste
          for (Course course in courses)
            if (course.id != 'do_not_put_there') _courseTile(context, course),
        ],
      ),
    );
  }
}

Widget _courseTile(BuildContext context, Course course) {
  double progressPercentage = 0.2;

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
        child: const Center(
          child: Icon(
            Icons.play_arrow,
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
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => CourseDetailsPage(
            course: course,
            initialPage: 0,
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
