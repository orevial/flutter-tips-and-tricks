import 'package:flutter/material.dart';

class CourseDetailsPage extends StatefulWidget {
  final dynamic course;

  const CourseDetailsPage({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  State<CourseDetailsPage> createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.course['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: widget.course.containsKey('pages')
            ? _courseContent()
            : const Center(
                child: Text('Sorry, this course is yet to be created...'),
              ),
      ),
    );
  }

  Widget _courseContent() {
    return Column(
      children: [
        _buildPageIndicator(),
        const SizedBox(height: 25),
        Expanded(
          child: PageView(
            onPageChanged: (newPage) {
              setState(() {
                currentPage = newPage;
              });
            },
            children: [
              for (dynamic page in widget.course['pages'] as List<dynamic>)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      page['name'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(page['content']),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _indicator({
    required bool isActive,
    required bool isViewed,
  }) {
    final Color color;
    if (isActive) {
      color = Theme.of(context).primaryColor;
    } else if (isViewed) {
      color = Theme.of(context).primaryColor.withOpacity(0.1);
    } else {
      color = const Color(0XFFEAEAEA);
    }
    return SizedBox(
      height: 8,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: isActive ? 10 : 8.0,
        width: isActive ? 12 : 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: color,
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.course['pages'].length; i++) {
      list.add(
        _indicator(isActive: i == currentPage, isViewed: i < currentPage),
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: list
          .map(
            (dot) => Expanded(
              child: Container(
                child: dot,
              ),
            ),
          )
          .toList(),
    );
  }
}
