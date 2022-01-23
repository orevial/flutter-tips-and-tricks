import 'package:flutter/material.dart';
import 'package:flutters_tips_and_tricks/course_progress_indicator.dart';
import 'package:flutters_tips_and_tricks/courses.model.dart';

class CourseDetailsPage extends StatefulWidget {
  final Course course;
  final int initialPage;

  const CourseDetailsPage({
    Key? key,
    // ℹ️ 👁‍🗨 Ici on utilise des arguments nommés plutôt que de simples "positional arguments"
    // parce que sinon il ne serait pas clair pour l'appelant à quoi correspond
    // chacun des paramètres
    required this.course,
    required this.initialPage,
  }) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  late final _pageController = PageController(initialPage: widget.initialPage);

  // ℹ️ 👁‍🗨 On utilise un "getter" Dart, c'est à dire qu'on déclare une propriété
  // qui ne peut pas être mutée et à laquelle on peut accéder comme n'importe quelle propriété,
  // c'est à dire `currentPage` au lieu d'une méthode `currentPage()`
  int get currentPage => _pageController.hasClients
      ? _pageController.page!.round()
      : widget.initialPage;

  bool get hasPages => widget.course.pages.isNotEmpty;

  bool get isLastPage =>
      hasPages && currentPage == widget.course.pages.length - 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.course.pages.isNotEmpty
            ? _courseContent()
            // ℹ️ 👁‍🗨 Pensez aux cas d'erreur ! Qu'arrive-t'il si on essaye d'affiche un cours qui n'a pas de page ?
            : const Center(
                child: Text('Sorry, this course is yet to be created...'),
              ),
      ),
      floatingActionButton: isLastPage
          ? FloatingActionButton(
              key: const Key('terminate-course-fab'),
              onPressed: () {
                print('Course finished !');
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.check),
            )
          : Container(),
    );
  }

  Widget _courseContent() {
    return Column(
      children: [
        buildPageIndicator(
          currentPage: currentPage,
          totalPages: widget.course.pages.length,
          primaryColor: Theme.of(context).primaryColor,
        ),
        const SizedBox(height: 25),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (_) {
              setState(() {});
            },
            // ℹ️ 👁‍🗨 Une autre manière d'utiliser une liste plus axée "programmation fonctionnelle"...
            // Utilisez la manière que vous préférez !
            children: widget.course.pages.map(_coursePageContent).toList(),
          ),
        ),
      ],
    );
  }

  Widget _coursePageContent(CoursePage page) {
    return ListView(
      children: [
        Text(
          page.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(page.content),
      ],
    );
  }
}
