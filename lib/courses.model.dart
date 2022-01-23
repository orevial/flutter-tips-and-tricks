class Courses {
  final List<Course> courses;

  Courses({required this.courses});

  factory Courses.fromJson(List<dynamic> json) {
    return Courses(
        courses: json
            .map((course) => Course.fromJson(course as Map<String, dynamic>))
            .toList());
  }
}

class Course {
  final String id;
  final String name;
  final List<CoursePage> pages;

  Course({required this.id, required this.name, required this.pages});

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
        id: json['id'],
        name: json['name'],
        pages: (json['pages'] as List<dynamic>)
            .map((page) => CoursePage.fromJson(page as Map<String, dynamic>))
            .toList());
  }
}

class CoursePage {
  final String name;
  final String content;

  CoursePage({required this.name, required this.content});

  factory CoursePage.fromJson(Map<String, dynamic> json) {
    return CoursePage(
      name: json['name'],
      content: json['content'],
    );
  }
}
